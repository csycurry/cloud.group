package com.csy.mission.manager;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.dao.MissionCodeMapperExt;
import com.csy.dao.MissionMapperExt;
import com.csy.mission.domain.dto.MissionDTO;
import com.csy.mission.domain.dto.MissionExtendDTO;
import com.csy.mission.domain.dto.MissionSearchDTO;
import com.csy.mission.domain.emus.MissionCodeStatusEn;
import com.csy.mission.domain.emus.MissionIpEn;
import com.csy.mission.domain.emus.MissionTypeEn;
import com.csy.model.Mission;
import com.csy.model.MissionCode;
import com.csy.model.MissionExample;
import com.csy.model.MissionWithBLOBs;
import com.csy.model.base.DateUtil;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;

@Service
public class MissionManager {
	@Autowired
	private MissionMapperExt missionMapperExt;
	@Autowired
	private MissionCodeMapperExt missionCodeMapperExt;
	
	public MissionExtendDTO insertMission(MissionExtendDTO missionDTO,String staffCode)
	{
		MissionWithBLOBs mission = new MissionWithBLOBs();
		BeanUtils.copyProperties(missionDTO, mission);
		mission.setCreator(staffCode);
		mission.setCreateTm(new Date());
		mission.setModifior(staffCode);
		mission.setModifyTm(new Date());
		mission.setSignNum(0);
		if(StringUtils.isNotEmpty(missionDTO.getBeginDate()))
		{
			mission.setBeginTm(DateUtil.parse(missionDTO.getBeginDate(),DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		if(StringUtils.isNotEmpty(missionDTO.getEndDate()))
		{
			mission.setEndTm(DateUtil.parse(missionDTO.getEndDate(),DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		missionMapperExt.insert(mission);
		missionDTO.setId(mission.getId());
		return missionDTO;
	}
	
	public void updateMission(MissionDTO missionDTO,String staffCode)
	{
		MissionWithBLOBs mission = new MissionWithBLOBs();
		BeanUtils.copyProperties(missionDTO, mission);
		mission.setModifior(staffCode);
		mission.setModifyTm(new Date());
		missionMapperExt.updateByPrimaryKeySelective(mission);
	}
	
	public Pagination<MissionDTO> pageSearch(MissionSearchDTO searchDTO)
	{
		Pagination<MissionDTO> pagination = new Pagination<MissionDTO>(searchDTO.getCurrentPage(),searchDTO.getPageSize());
		MissionExample example = bulidExample(searchDTO);
		long count = missionMapperExt.countByExample(example);
		pagination.setTotalCount((int)count);
		if(count>0)
		{
			List<Mission> newsList= missionMapperExt.selectExampleWithPage(example, pagination.getOffset(), pagination.getPageSize());
			List<MissionDTO> retList = new ArrayList<MissionDTO>(newsList.size());
			for (Mission result : newsList) {
				MissionDTO missionDTO = new MissionDTO();
				BeanUtils.copyProperties(result, missionDTO);
				retList.add(missionDTO);
//				missionDTO.setCreateDate(DateUtil.toLocaleString(result.getCreateTm(), "YYYY-MM-dd"));
				if(result.getType()!=null)
					missionDTO.setTypeCN(MissionTypeEn.toEnum(result.getType().byteValue()).getMean());
			}
			pagination.setList(retList);
		}
		 
		return pagination;
	}
	
	public MissionExtendDTO detail(int missionId)
	{
		MissionWithBLOBs mission = missionMapperExt.selectByPrimaryKey(missionId);
		MissionExtendDTO extendDTO = new MissionExtendDTO();
		BeanUtils.copyProperties(mission, extendDTO);
		extendDTO.setTypeCN(MissionTypeEn.toEnum(mission.getType()).getMean());
		return extendDTO;
		
	}
	
	public void remove(int missionId)
	{
		missionMapperExt.deleteByPrimaryKey(missionId);
	}
	
	public List<MissionDTO> list(MissionSearchDTO searchDTO)
	{
		MissionExample example = bulidExample(searchDTO);
		List<Mission> list = missionMapperExt.selectByExample(example);
		List<MissionDTO> retList = new ArrayList<MissionDTO>(list.size());
		for (Mission result : list) {
			MissionDTO missionDTO = new MissionDTO();
			BeanUtils.copyProperties(result, missionDTO);
			missionDTO.setModifyDate(DateUtil.toLocaleString(result.getModifyTm(),DateUtil.YYYY_MM_DD));
			if(result.getIpChange()==null?false:true)
				missionDTO.setIpChangeCn(MissionIpEn.toEnum((byte)1).getMean());
			else
				missionDTO.setIpChangeCn(MissionIpEn.toEnum((byte)0).getMean());
			retList.add(missionDTO);
		}
		return retList;
	}

	private MissionExample bulidExample(MissionSearchDTO searchDTO) {
		MissionExample example = new MissionExample();
		MissionExample.Criteria criteria = example.createCriteria();
		if(StringUtils.isNotEmpty(searchDTO.getMissionTitle()))
		{
			criteria.andMissionTitleLike("%"+searchDTO.getMissionTitle()+"%");
		}
		if(searchDTO.getStatus()!=null)
		{
//			criteria.andstat
		}
		if(searchDTO.getType()!=null)
		{
			criteria.andTypeEqualTo(searchDTO.getType());
		}
		if(StringUtils.isNotEmpty(searchDTO.getBeginTm()))
		{
			criteria.andBeginTmGreaterThan(DateUtil.parse(searchDTO.getBeginTm(),DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		if(StringUtils.isNotEmpty(searchDTO.getEndTm()))
		{
			criteria.andBeginTmLessThan(DateUtil.parse(searchDTO.getEndTm(),DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		example.setOrderByClause("begin_tm desc");
		return example;
	}
	
	public void createMission(String[][] bodys,MissionExtendDTO missionDTO,String staffCode)
	{
		missionDTO = insertMission(missionDTO,staffCode);
		inserBatch(bodys,missionDTO.getId());
	}

	public void inserBatch(String[][] bodys, int missionId) {
		List<MissionCode> list = new ArrayList<>(); 
		for(String[] body:bodys)
		{
			MissionCode code = new MissionCode();
			code.setCode(body[0]);
			code.setCreateTm(new Date());
			code.setMissionId(missionId);
			code.setStatus(MissionCodeStatusEn.UNUSE.getCode());
			list.add(code);
		}
		missionCodeMapperExt.insertBatch(list);
	}
	
	public void signNumAdd(Integer id)
	{
		missionMapperExt.signNumAdd(id);
	}
	
	
	
}
