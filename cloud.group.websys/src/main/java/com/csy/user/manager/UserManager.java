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
import com.csy.dao.UserLevelMapper;
import com.csy.dao.UserMapperExt;
import com.csy.exception.BusinessException;
import com.csy.model.MissionSign;
import com.csy.model.MissionSignExample;
import com.csy.model.User;
import com.csy.model.UserExample;
import com.csy.model.UserLevel;
import com.csy.model.UserLevelExample;
import com.csy.model.base.DateUtil;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;
import com.csy.model.base.UserTypeEn;
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
	@Autowired
	private UserLevelMapper userLevelMapper;
	
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
		User user = new User();
		user.setUserCode(searchDTO.getUserCode());
		user.setUserPwd(MD5Utils.encoderByMd5With32Bit(searchDTO.getUserPwd()));
		user.setUserType(UserTypeEn.MARK.getCode());
		List<User> userDTOs = userMapperExt.checkUser(user);
		if(userDTOs==null||userDTOs.size()==0)
		{
			return null;
		}
		UserDTO dto = new UserDTO();
		BeanUtils.copyProperties(userDTOs.get(0), dto);
		dto.setCreateDate(DateUtil.toLocaleString(dto.getCreateTime(), DateUtil.YYYY_MM_DD_HH_DD_SS));
		SystemConfigDTO configDTO =systemConfigManager.detail(ConfigEn.exchangerate.getCode());
		dto.setBalanceRMB(dto.getBalance()/Integer.valueOf(configDTO.getConfigValue()));
		return dto;
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
		checkCode(userDTO.getUserCode());
		checkMobile(userDTO.getUserMobile());
		checkMail(userDTO.getUserMail());
		User record = new User();
		BeanUtils.copyProperties(userDTO, record);
		record.setUserPwd(MD5Utils.encoderByMd5With32Bit(record.getUserPwd()));
		record.setBalance(0L);
		record.setCreateTime(DateUtil.getCurrentTime());
		userMapperExt.insert(record);
		if(userDTO.getUserId()!=null){
			UserLevelExample example = new UserLevelExample();
			example.createCriteria().andUserIdEqualTo(userDTO.getUserId());
			List<UserLevel> levels =userLevelMapper.selectByExample(example);
			UserLevel level = new UserLevel();
			if(!levels.isEmpty()){
				UserLevel userLevel = levels.get(0);
				level.setUserId(record.getId());
				level.setLevel1(userLevel.getUserId());
				level.setLevel2(userLevel.getLevel1());
				level.setLevel3(userLevel.getLevel2());
				level.setLevel4(userLevel.getLevel3());
				level.setLevel5(userLevel.getLevel4());
			}else{
				level.setUserId(record.getId());
				level.setLevel1(userDTO.getUserId());
			}
			userLevelMapper.insert(level);
		}
	}
	
	public Boolean checkCode(String code)
	{
		UserExample example = new UserExample();
		example.createCriteria().andUserCodeEqualTo(code);
		long count = userMapperExt.countByExample(example);
		if(count>0)
			throw new BusinessException("该用户名已被使用！");
		return true;
	}
	
	public Boolean checkMobile(String mobile)
	{
		UserExample example = new UserExample();
		example.createCriteria().andUserMobileEqualTo(mobile);
		long count = userMapperExt.countByExample(example);
		if(count>0)
			throw new BusinessException("该手机号码已经被注册！");
		return true;
	}
	
	public Boolean checkMail(String mail)
	{
		UserExample example = new UserExample();
		example.createCriteria().andUserMailEqualTo(mail);
		long count = userMapperExt.countByExample(example);
		if(count>0)
			throw new BusinessException("该邮箱已经被注册！");
		return true;
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
	
	public void updateUserBalance(UserDTO userDTO)
	{
		User user = new User();
		BeanUtils.copyProperties(userDTO, user);
		userMapperExt.updateByPrimaryKeySelective(user);
	}
	
	public void updateUserByPhone(String phone,String pwd)
	{
		
		UserExample example = new UserExample();
		example.createCriteria().andUserMobileEqualTo(phone);
		User user = new User();
		user.setUserPwd(pwd);
		userMapperExt.updateByExampleSelective(user, example);
	}
	
	public int changeBalance(UserDTO userDTO)
	{
		String code = smsManager.getCode(userDTO.getUserMobile());
		if(!code.equals(userDTO.getCode()))
		{
			throw new BusinessException("请输入正确的验证码!");
		}
		User user = new User();
		BeanUtils.copyProperties(userDTO, user);
		int i = userMapperExt.changeBalance(user);
		return i;
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
	
	public UserDTO getUserByOpenId(String openId)
	{
		UserExample example = new UserExample();
		example.createCriteria().andOpenidEqualTo(openId);
		List<User> list = userMapperExt.selectByExample(example);
		if(list!=null&&list.size()>0)
		{
			User user = list.get(0);
			UserDTO dto = new UserDTO();
			BeanUtils.copyProperties(user, dto);
			return dto;
		}
		return null;
	}
	
	public long check(String type,String Phone)
	{
		UserExample example = new UserExample();
		if(type.equals("VALIDATEPHONE"))
		{
			example.createCriteria().andUserMobileEqualTo(Phone);
			return userMapperExt.countByExample(example);
		}
		else if(type.equals("PHONEMESSAGE"))
		{
			String code = smsManager.getCode(Phone);
			if(!code.equals(Phone))
			{
				throw new BusinessException("请输入正确的验证码!");
			}
		}
		return 0;
	}
	
	public long checkCode(String type,String Phone,String code)
	{
		if(type.equals("PHONEMESSAGE"))
		{
			String MyCode = smsManager.getCode(Phone);
			if(!MyCode.equals(code))
			{
				throw new BusinessException("请输入正确的验证码!");
			}
		}
		return 0;
	}
	
	public UserLevel getLevel(Integer userId){
		UserLevelExample example = new UserLevelExample();
		example.createCriteria().andUserIdEqualTo(userId);
		List<UserLevel> list = userLevelMapper.selectByExample(example);
		if(list.isEmpty()){
			return null;
		}
		return list.get(0);
	}
	
	private UserExample createExample(UserSearchDTO searchDTO)
	{
		UserExample example = new UserExample();
		UserExample.Criteria criteria = example.createCriteria();
		if(searchDTO.getId()!=null)
		{
			criteria.andIdEqualTo(searchDTO.getId());
		}
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
			criteria.andUserNameLike(searchDTO.getUserName()+"%");
		}
		example.setOrderByClause("create_time desc");
		return example;
	}
	
	
}
