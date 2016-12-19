package com.csy.rebate.manager;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.account.domain.dto.UserAccountDTO;
import com.csy.account.domain.emus.AccountStatusEn;
import com.csy.account.domain.emus.AccountTypeEn;
import com.csy.account.manager.AccountManager;
import com.csy.config.domain.dto.SystemConfigDTO;
import com.csy.config.domain.emus.ConfigEn;
import com.csy.config.manager.SystemConfigManager;
import com.csy.dao.RebateMapperExt;
import com.csy.mission.domain.dto.MissionExtendDTO;
import com.csy.mission.manager.MissionManager;
import com.csy.model.Rebate;
import com.csy.model.RebateExample;
import com.csy.model.UserAccount;
import com.csy.model.base.DateUtil;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;
import com.csy.rebate.domain.dto.RebateDTO;
import com.csy.rebate.domain.dto.RebateSearchDTO;
import com.csy.rebate.domain.emus.RebateStatusEn;
import com.csy.user.domain.dto.UserDTO;
import com.csy.user.manager.UserManager;
@Service
public class RebateManager {
	@Autowired
	private RebateMapperExt rebateMapperExt;
	
	@Autowired
	private UserManager userManager;
	@Autowired
	private AccountManager accountManager; 
	@Autowired
	private MissionManager missionManager;
	@Autowired
	private SystemConfigManager systemConfigManager;
	
	public Pagination<RebateDTO> pageSearch(RebateSearchDTO searchDTO)
	{
		Pagination<RebateDTO> pagination = new Pagination<RebateDTO>(searchDTO.getCurrentPage());
		RebateExample example = createExample(searchDTO);
		Long count = rebateMapperExt.countByExample(example);
		pagination.setTotalCount(count.intValue());
		if(count>0)
		{
			List<Rebate> list = rebateMapperExt.selectByExampleByPage(example, pagination.getOffset(), pagination.getPageSize());
			List<RebateDTO> userDTOs = new ArrayList<>();
			for(Rebate rebate:list)
			{
				RebateDTO dto = new RebateDTO();
				BeanUtils.copyProperties(rebate, dto);
				dto.setStatusCn(RebateStatusEn.toEnum(rebate.getStatus()).getMean());
				userDTOs.add(dto);
			}
			pagination.setList(userDTOs);
		}
		return pagination;
	}
	
	public Pagination<RebateDTO> pageSearch(RebateSearchDTO searchDTO,String order ,int offset,int limit)
	{
		Pagination<RebateDTO> pagination = new Pagination<RebateDTO>(searchDTO.getCurrentPage());
		RebateExample example = createExample(searchDTO);
		Long count = rebateMapperExt.countByExample(example);
		pagination.setTotal(count.intValue());
		if(count>0)
		{
			List<Rebate> list = rebateMapperExt.selectByExampleByPage(example, offset, limit);
			List<RebateDTO> userDTOs = new ArrayList<>();
			for(Rebate rebate:list)
			{
				RebateDTO dto = new RebateDTO();
				BeanUtils.copyProperties(rebate, dto);
				dto.setStatusCn(RebateStatusEn.toEnum(rebate.getStatus()).getMean());
				dto.setCreateDate(DateUtil.toLocaleString(rebate.getCreateTm(), DateUtil.YYYY_MM_DD));
				dto.setTypeCn("打码");
				userDTOs.add(dto);
			}
			pagination.setRows(userDTOs);
		}
		return pagination;
	}
	
	public List<RebateDTO> geRebateDTOs(Integer userId,Integer missionId)
	{
		RebateExample example = new RebateExample();
		example.createCriteria().andUserIdEqualTo(userId).andMissionIdEqualTo(missionId);
		List<Rebate> list= rebateMapperExt.selectByExample(example );
		List<RebateDTO> rebateDTOs = new ArrayList<>();
		for(Rebate rebate:list)
		{
			RebateDTO dto = new RebateDTO();
			BeanUtils.copyProperties(rebate, dto);
			dto.setStatusCn(RebateStatusEn.toEnum(rebate.getStatus()).getMean());
			rebateDTOs.add(dto);
		}
		return rebateDTOs;
	}
	
	public RebateDTO detail(int id)
	{
		Rebate rebate = rebateMapperExt.selectByPrimaryKey(id);
		RebateDTO dto = new RebateDTO();
		BeanUtils.copyProperties(rebate, dto);
		return dto;
	}
	
	public void editRebate(RebateDTO dto,String staffCode)
	{
		Rebate rebate = new Rebate();
		BeanUtils.copyProperties(dto, rebate);
		SystemConfigDTO configDTO = systemConfigManager.detail(ConfigEn.exchangerate.getCode());
		MissionExtendDTO missionDTO = missionManager.detail(dto.getMissionId());
		Double amount = (dto.getEarnings().doubleValue()*Double.parseDouble(configDTO.getConfigValue())/missionDTO.getPrice().doubleValue());
		rebate.setAmount(fixDouble(amount));
		rebate.setModifior(staffCode);
		rebate.setModifyTm(DateUtil.getCurrentDate());
		rebateMapperExt.updateByPrimaryKeySelective(rebate);
	}
	
	public void settleRebate(List<Integer> ids,String staffCode)
	{
		for(Integer id:ids)
		{
			Rebate rebate = rebateMapperExt.selectByPrimaryKey(id);
			if(rebate.getStatus().equals(RebateStatusEn.UNSETTLE.getCode()))
			{
				rebate.setStatus(RebateStatusEn.SETTLE.getCode());
				rebate.setSettleTm(DateUtil.getCurrentDate());
				rebate.setSettleMan(staffCode);
				rebateMapperExt.updateByPrimaryKey(rebate);
				bulidAccount(rebate);
			}
		}
	}
	
	public void settleRebateBySearch(RebateSearchDTO searchDTO,String staffCode)
	{
		RebateExample example = createExample(searchDTO);
		List<Rebate> list = rebateMapperExt.selectByExample(example);
		for(Rebate rebate:list)
		{
			if(rebate.getStatus().equals(RebateStatusEn.UNSETTLE.getCode()))
			{
				rebate.setStatus(RebateStatusEn.SETTLE.getCode());
				rebate.setSettleTm(DateUtil.getCurrentDate());
				rebate.setSettleMan(staffCode);
				rebateMapperExt.updateByPrimaryKey(rebate);
				bulidAccount(rebate);
			}
		}
	}
	
	private void bulidAccount(Rebate rebate)
	{
		UserDTO dto = userManager.findDetail(rebate.getUserId());
		UserAccountDTO accountDTO = accountManager.getAccount(rebate.getUserId());
		UserAccount account = new UserAccount();
		account.setUserId(dto.getId());
		account.setAmount(BigDecimal.valueOf(rebate.getAmount()));
		if(accountDTO==null)
		{
			accountDTO = new UserAccountDTO();
			accountDTO.setBalance(BigDecimal.ZERO);
			accountDTO.setTotal(BigDecimal.ZERO);
		}
		account.setBalance(accountDTO.getBalance().add(rebate.getEarnings()));
		account.setUserCode(dto.getUserCode());
		account.setTotal(accountDTO.getTotal().add(rebate.getEarnings()));
		account.setType(AccountTypeEn.IN.getCode());
		account.setCreateTime(new Date());
		account.setStatus(AccountStatusEn.SETTLE.getCode());
		account.setAmount(rebate.getEarnings());
		account.setAmountNum(rebate.getAmount().intValue());
		accountManager.insertAccount(account);
		dto.setBalance(account.getBalance().longValue());
		userManager.updateUser(dto);
	}
	
	public void inserBatch(String[][] bodys,int missionId,String staffCode) {
		String[] title = bodys[0];
		List<Rebate> rebates = new ArrayList<>();
		MissionExtendDTO missionDTO = missionManager.detail(missionId);
		if(title[1].equals("点击数"))
		{
			for(String[] body: bodys)
			{
				Rebate rebate = bulid(body);
				if(rebate==null)
					continue;
				rebate.setMissionId(missionId);
				rebate.setMissionName(missionDTO.getMissionTitle());
				rebate.setAmount(Double.parseDouble(body[1]));
				BigDecimal earning = BigDecimal.valueOf(missionDTO.getPrice().doubleValue()*Double.parseDouble(body[1]));
				rebate.setEarnings(earning);
				rebate.setCreateTm(DateUtil.getCurrentDate());
				rebate.setCreator(staffCode);
				rebates.add(rebate);
			}
		}
		else if(title[1].equals("奖励"))
		{
			SystemConfigDTO configDTO = systemConfigManager.detail(ConfigEn.exchangerate.getCode());
			for(String[] body: bodys)
			{
				Rebate rebate = bulid(body);
				if(rebate==null)
					continue;
				rebate.setMissionId(missionId);
				rebate.setEarnings(BigDecimal.valueOf(Double.parseDouble(body[1])));
				Double amount = (Double.parseDouble(body[1])*Double.parseDouble(configDTO.getConfigValue())/missionDTO.getPrice().doubleValue());
				rebate.setAmount(fixDouble(amount));
				rebate.setCreateTm(DateUtil.getCurrentDate());
				rebate.setCreator(staffCode);
				rebates.add(rebate);
			}
		}
		
		rebateMapperExt.insertBatch(rebates);
		
	}
	
	private double fixDouble(double amount)
	{
		BigDecimal decimal  =  new   BigDecimal(amount);  
		double d =  decimal.setScale(2,   BigDecimal.ROUND_HALF_UP).doubleValue(); 
		return d;
	}
	
	private Rebate bulid(String[] body)
	{
		Rebate rebate = new Rebate();
		UserDTO userDTO = userManager.getUserByCode(body[0]);
		if(userDTO==null)
		{
			return null;
		}
		rebate.setUserCode(body[0]);
		rebate.setUserId(userDTO.getId());
		rebate.setUserName(userDTO.getUserCode());
		rebate.setStatus(RebateStatusEn.UNSETTLE.getCode());
		rebate.setType((byte)0);
		rebate.setCreateTm(new Date());
		return rebate;
	}
	
	
	private RebateExample createExample(RebateSearchDTO searchDTO)
	{
		RebateExample example = new RebateExample();
		RebateExample.Criteria criteria =  example.createCriteria();
		if(searchDTO.getMissionId()!=null)
		{
			criteria.andMissionIdEqualTo(searchDTO.getMissionId());
		}
		if(searchDTO.getUserId()!=null)
		{
			criteria.andUserIdEqualTo(searchDTO.getUserId());
		}
		if(StringUtils.isNotEmpty(searchDTO.getUserCode()))
		{
			criteria.andUserCodeEqualTo(searchDTO.getUserCode());
		}
		criteria.andStatusNotEqualTo(RebateStatusEn.DELETE.getCode());
		example.setOrderByClause("mission_id desc");
		return example;
	}
	
	
	
	
}
