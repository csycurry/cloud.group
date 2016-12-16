package com.csy.user.manager;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.common.manager.SmsManager;
import com.csy.config.domain.dto.SystemConfigDTO;
import com.csy.config.domain.emus.ConfigEn;
import com.csy.config.manager.SystemConfigManager;
import com.csy.dao.MissionSignMapperExt;
import com.csy.dao.UserMapperExt;
import com.csy.exception.BusinessException;
import com.csy.model.MissionSign;
import com.csy.model.MissionSignExample;
import com.csy.model.User;
import com.csy.model.UserExample;
import com.csy.model.base.DateUtil;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;
import com.csy.user.domain.dto.UserDTO;
import com.csy.user.domain.dto.UserSearchDTO;
import com.csy.util.MD5Utils;

@Service
public class UserManager {
	@Resource
	private UserMapperExt userMapperExt;
	@Autowired
	private MissionSignMapperExt missionSignMapperExt;
	@Autowired
	private SmsManager smsManager;
	@Autowired
	private SystemConfigManager systemConfigManager;
	
	public Pagination<UserDTO> pageSearch(UserSearchDTO searchDTO)
	{
		Pagination<UserDTO> pagination = new Pagination<UserDTO>(searchDTO.getCurrentPage());
		UserExample example = createExample(searchDTO);
		long count = userMapperExt.countByExample(example);
		if(count>0)
		{
			List<User> list = userMapperExt.selectUserWithPage(example, pagination.getOffset(), pagination.getPageSize());
			List<UserDTO> userDTOs = new ArrayList<>();
			for(User user:list)
			{
				UserDTO dto = new UserDTO();
				BeanUtils.copyProperties(user, dto);
				userDTOs.add(dto);
			}
			pagination.setList(userDTOs);
		}
		return pagination;
		
	}
	
	public UserDTO login(UserSearchDTO searchDTO)
	{
		if(StringUtils.isEmpty(searchDTO.getUserCode())||StringUtils.isEmpty(searchDTO.getUserPwd()))
			throw new BusinessException("用户名或密码不能为空！");
		List<UserDTO> userDTOs = pageSearch(searchDTO).getList();
		if(userDTOs==null||userDTOs.size()==0)
		{
			return null;
		}
		return userDTOs.get(0);
	}
	
	public UserDTO findDetail(int userId)
	{
		User user = userMapperExt.selectByPrimaryKey(userId);
		if(user==null)
			return null;
		UserDTO dto = new UserDTO();
		BeanUtils.copyProperties(user, dto);
		dto.setCreateDate(DateUtil.toLocaleString(dto.getCreateTime(), DateUtil.YYYY_MM_DD_HH_DD_SS));
		SystemConfigDTO configDTO =systemConfigManager.detail(ConfigEn.exchangerate.getCode());
		dto.setBalanceRMB(dto.getBalance()/Integer.valueOf(configDTO.getConfigValue()));
		return dto;
	}
	
	public void insertUser(UserDTO userDTO)
	{
		if(StringUtils.isNotEmpty(userDTO.getUserMobile()))
		{
			String code = smsManager.getCode(userDTO.getUserMobile());
			if(!code.equals(userDTO.getCode()))
			{
				throw new BusinessException("请输入正确的验证码!");
			}
		}
		UserExample example = new UserExample();
		example.createCriteria().andUserCodeEqualTo(userDTO.getCode());
		long count = userMapperExt.countByExample(example);
		if(count>0)
		{
			throw new BusinessException("该用户名已被使用！");
		}
		User record = new User();
		BeanUtils.copyProperties(userDTO, record);
		record.setUserPwd(MD5Utils.encoderByMd5With32Bit(record.getUserPwd()));
		userMapperExt.insert(record);
	}
	
	public void updateUser(UserDTO userDTO)
	{
		if(StringUtils.isNotEmpty(userDTO.getUserMobile()))
		{
			String code = smsManager.getCode(userDTO.getUserMobile());
			if(!code.equals(userDTO.getCode()))
			{
				throw new BusinessException("请输入正确的验证码!");
			}
		}
		User user = new User();
		BeanUtils.copyProperties(userDTO, user);
		userMapperExt.updateByPrimaryKeySelective(user);
	}
	
	public UserDTO getUserByCode(String code)
	{
		MissionSignExample example = new MissionSignExample();
		example.createCriteria().andMissionNumEqualTo(code);
		List<MissionSign> list = missionSignMapperExt.selectByExample(example);
		if(list!=null&&list.size()>0)
		{
			MissionSign missionSign = list.get(0);
			return findDetail(missionSign.getUserId());
		}
		return null;
	}
	
	private UserExample createExample(UserSearchDTO searchDTO)
	{
		UserExample example = new UserExample();
		UserExample.Criteria criteria = example.createCriteria();
		if(StringUtils.isNotEmpty(searchDTO.getUserCode()))
		{
			criteria.andUserCodeEqualTo(searchDTO.getUserCode());
		}
		if(StringUtils.isNotEmpty(searchDTO.getUserPwd()))
		{
			criteria.andUserPwdEqualTo(MD5Utils.encoderByMd5With32Bit(searchDTO.getUserPwd()));
		}
		if(StringUtils.isNotEmpty(searchDTO.getUserName()))
		{
			criteria.andUserPwdLike(searchDTO.getUserPwd()+"%");
		}
		example.setOrderByClause("create_time desc");
		return example;
	}
	
	
}
