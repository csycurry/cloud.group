package com.csy.mission.manager;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.dao.MissionCodeMapperExt;
import com.csy.dao.MissionSignMapperExt;
import com.csy.exception.BusinessException;
import com.csy.mission.domain.dto.MissionExtendDTO;
import com.csy.mission.domain.dto.MissionSignDTO;
import com.csy.mission.domain.dto.MissionSignSearchDTO;
import com.csy.mission.domain.emus.MissionCodeStatusEn;
import com.csy.mission.domain.emus.MissionCodeTypeEn;
import com.csy.model.MissionCode;
import com.csy.model.MissionCodeExample;
import com.csy.model.MissionSign;
import com.csy.model.MissionSignExample;
import com.csy.model.base.DateUtil;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;
import com.csy.user.domain.dto.UserDTO;
import com.csy.util.PingYinUtil;
@Service
public class MissionSignManager {
	@Autowired
	private MissionSignMapperExt missionSignMapperExt;
	@Autowired
	private MissionCodeMapperExt missionCodeMapperExt;
	@Autowired
	private MissionManager missionManager;
	
	public Pagination<MissionSignDTO> pageSearch(MissionSignSearchDTO searchDTO)
	{
		Pagination<MissionSignDTO> pagination = new Pagination<MissionSignDTO>(searchDTO.getCurrentPage());
		MissionSignExample example = bulidExample(searchDTO);
		example.setOrderByClause("num,id DESC");
		long count = missionSignMapperExt.countByExample(example);
		pagination.setTotalCount((int)count);
		if(count>0)
		{
			List<MissionSign> missionSigns= missionSignMapperExt.selectExampleWithPage(example, pagination.getOffset(), pagination.getPageSize());
			List<MissionSignDTO> retList = new ArrayList<MissionSignDTO>();
			for (MissionSign result : missionSigns) {
				MissionSignDTO missionDTO = new MissionSignDTO();
				BeanUtils.copyProperties(result, missionDTO);
				retList.add(missionDTO);
			}
			pagination.setList(retList);
		}
		 
		return pagination;
	}
	
	public List<MissionSignDTO> getSign(Integer userId,Integer missionId)
	{
		MissionSignExample example = new MissionSignExample();
		example.createCriteria().andMissionIdEqualTo(missionId).andUserIdEqualTo(userId);
		List<MissionSign> list = missionSignMapperExt.selectByExample(example);
		List<MissionSignDTO> retList = new ArrayList<MissionSignDTO>();
		for (MissionSign result : list) {
			MissionSignDTO missionDTO = new MissionSignDTO();
			BeanUtils.copyProperties(result, missionDTO);
			retList.add(missionDTO);
		}
		return retList;
	}
	
	public String getCode(UserDTO userDTO,Integer missionId)
	{
		if(userDTO==null)
		{
			throw new BusinessException("您尚未登陆，请先登陆!");
		}
		MissionExtendDTO extendDTO = missionManager.detail(missionId);
		if(extendDTO.getCodeType().equals(MissionCodeTypeEn.IMPORT.getCode()))
		{
			MissionCodeExample example = new MissionCodeExample();
			example.createCriteria().andMissionIdEqualTo(missionId).andStatusEqualTo(MissionCodeStatusEn.UNUSE.getCode());
			List<MissionCode> list = missionCodeMapperExt.selectByExample(example);
			for(MissionCode code:list)
			{
				code.setStatus(MissionCodeStatusEn.USED.getCode());
				int count = missionCodeMapperExt.updateByExampleSelective(code, example);
				if(count>0)
				{
					MissionSign missionSign = bulidSign(userDTO,extendDTO);
					missionSign.setMissionNum(code.getCode());
					missionSignMapperExt.insert(missionSign);
					missionManager.signNumAdd(missionId);
					return code.getCode();
				}
			}
		}
		else
		{
			MissionSign missionSign = bulidSign(userDTO,extendDTO);
			String code = initCode(extendDTO.getMissionTitle(),userDTO.getId());
			missionSign.setMissionNum(code);
			missionSignMapperExt.insert(missionSign);
			missionManager.signNumAdd(missionId);
			return code;
		}
		throw new BusinessException("工号已经被领取完");
	}
	
	private String initCode(String name,int userId)
	{
		StringBuffer buffer = new StringBuffer();
		buffer.append(PingYinUtil.getFirstSpell(name)).append("_");
		buffer.append(new Date().toString()).append("_").append(userId);
		return buffer.toString();
	}
	
	
	private MissionSign bulidSign(UserDTO userDTO,MissionExtendDTO extendDTO)
	{
		MissionSign missionSign = new MissionSign();
		missionSign.setUserId(userDTO.getId());
		missionSign.setUserCode(userDTO.getUserCode());
		missionSign.setUserName(userDTO.getUserName());
		missionSign.setMissionId(extendDTO.getId());
		missionSign.setMissionName(extendDTO.getMissionTitle());
		missionSign.setSignTime(new Date());
		return missionSign;
	}
	
	private MissionSignExample bulidExample(MissionSignSearchDTO searchDTO) {
		MissionSignExample example = new MissionSignExample();
		MissionSignExample.Criteria criteria = example.createCriteria();
		if(StringUtils.isNotEmpty(searchDTO.getMissionTitle()))
		{
			criteria.andMissionNameLike(searchDTO.getMissionTitle()+"%");
		}
		if(StringUtils.isNotEmpty(searchDTO.getUserCode()))
		{
			criteria.andUserCodeLike(searchDTO.getUserCode()+"%");
		}
		if(StringUtils.isNotEmpty(searchDTO.getBeginTm()))
		{
			criteria.andSignTimeGreaterThan(DateUtil.parse(searchDTO.getBeginTm(),DateUtil.YYYY_MM_DD_HH_DD));
		}
		if(StringUtils.isNotEmpty(searchDTO.getEndTm()))
		{
			criteria.andSignTimeLessThan(DateUtil.parse(searchDTO.getEndTm(),DateUtil.YYYY_MM_DD_HH_DD));
		}
		example.setOrderByClause("sign_time desc");
		return example;
	}
}
