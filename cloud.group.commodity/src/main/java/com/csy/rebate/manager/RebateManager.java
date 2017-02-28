package com.csy.rebate.manager;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.csy.account.domain.dto.UserAccountDTO;
import com.csy.account.domain.emus.AccountStatusEn;
import com.csy.account.domain.emus.AccountTypeEn;
import com.csy.account.manager.AccountManager;
import com.csy.dao.RebateMapperExt;
import com.csy.exception.BusinessException;
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

	public Pagination<RebateDTO> pageSearch(RebateSearchDTO searchDTO) {
		Pagination<RebateDTO> pagination = new Pagination<RebateDTO>(searchDTO.getCurrentPage());
		RebateExample example = createExample(searchDTO);
		Long count = rebateMapperExt.countByExample(example);
		pagination.setTotalCount(count.intValue());
		if (count > 0) {
			List<Rebate> list = rebateMapperExt.selectByExampleByPage(example, pagination.getOffset(),
					pagination.getPageSize());
			List<RebateDTO> userDTOs = new ArrayList<>();
			for (Rebate rebate : list) {
				RebateDTO dto = new RebateDTO();
				BeanUtils.copyProperties(rebate, dto);
				dto.setStatusCn(RebateStatusEn.toEnum(rebate.getStatus()).getMean());
				userDTOs.add(dto);
			}
			pagination.setList(userDTOs);
		}
		return pagination;
	}

	public Pagination<RebateDTO> pageSearch(RebateSearchDTO searchDTO, String order, int offset, int limit) {
		Pagination<RebateDTO> pagination = new Pagination<RebateDTO>(searchDTO.getCurrentPage());
		RebateExample example = createExample(searchDTO);
		Long count = rebateMapperExt.countByExample(example);
		pagination.setTotal(count.intValue());
		if (count > 0) {
			List<Rebate> list = rebateMapperExt.selectByExampleByPage(example, offset, limit);
			List<RebateDTO> userDTOs = new ArrayList<>();
			for (Rebate rebate : list) {
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

	public List<RebateDTO> geRebateDTOs(Integer userId, Integer missionId) {
		RebateExample example = new RebateExample();
		example.createCriteria().andUserIdEqualTo(userId).andMissionIdEqualTo(missionId);
		List<Rebate> list = rebateMapperExt.selectByExample(example);
		List<RebateDTO> rebateDTOs = new ArrayList<>();
		for (Rebate rebate : list) {
			RebateDTO dto = new RebateDTO();
			BeanUtils.copyProperties(rebate, dto);
			dto.setStatusCn(RebateStatusEn.toEnum(rebate.getStatus()).getMean());
			rebateDTOs.add(dto);
		}
		return rebateDTOs;
	}

	public RebateDTO detail(int id) {
		Rebate rebate = rebateMapperExt.selectByPrimaryKey(id);
		RebateDTO dto = new RebateDTO();
		BeanUtils.copyProperties(rebate, dto);
		return dto;
	}


	@Transactional
	public void settleRebate(List<Integer> ids, String staffCode) {
		for (Integer id : ids) {
			Rebate rebate = rebateMapperExt.selectByPrimaryKey(id);
			if (rebate.getStatus().equals(RebateStatusEn.UNSETTLE.getCode())) {
				rebate.setStatus(RebateStatusEn.SETTLE.getCode());
				rebate.setSettleTm(DateUtil.getCurrentTime());
				rebate.setSettleMan(staffCode);
				rebateMapperExt.updateByPrimaryKey(rebate);
				if (!rebate.getAmount().isNaN()) {
					getRebaetByFrom(rebate);
				}
				bulidAccount(rebate);
			}
		}
	}

	public void getRebaetByFrom(Rebate rebate) {
		RebateExample example = new RebateExample();
		example.createCriteria().andEarningsFromEqualTo(rebate.getUserId()).andAmountIsNull()
				.andMissionIdEqualTo(rebate.getMissionId()).andImportDateEqualTo(rebate.getImportDate()).andStatusNotEqualTo(RebateStatusEn.DELETE.getCode());
		List<Rebate> rebates = rebateMapperExt.selectByExample(example);
		for (Rebate rebate2 : rebates) {
			rebate2.setStatus(RebateStatusEn.SETTLE.getCode());
			rebate2.setSettleTm(DateUtil.getCurrentTime());
			rebate2.setSettleMan(rebate2.getSettleMan());
			rebateMapperExt.updateByPrimaryKey(rebate2);
			bulidAccount(rebate2);
		}
	}

	@Transactional
	public void settleRebateBySearch(RebateSearchDTO searchDTO, String staffCode) {
		RebateExample example = createExample(searchDTO);
		List<Rebate> list = rebateMapperExt.selectByExample(example);
		for (Rebate rebate : list) {
			if (rebate.getStatus().equals(RebateStatusEn.UNSETTLE.getCode())) {
				rebate.setStatus(RebateStatusEn.SETTLE.getCode());
				rebate.setSettleTm(DateUtil.getCurrentTime());
				rebate.setSettleMan(staffCode);
				rebateMapperExt.updateByPrimaryKey(rebate);
				bulidAccount(rebate);
			}
		}
	}

	private void bulidAccount(Rebate rebate) {
		UserDTO dto = userManager.findDetail(rebate.getUserId());
		UserAccountDTO accountDTO = accountManager.getAccount(rebate.getUserId());
		UserAccount account = new UserAccount();
		account.setUserId(dto.getId());
		account.setAmount(rebate.getEarnings());
		account.setAmountNum(rebate.getEarnings().longValue());
		if (accountDTO == null) {
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
		accountManager.insertAccount(account);
		dto.setBalance(account.getBalance().longValue());
		userManager.updateUserBalance(dto);
	}

	@Transactional
	public void callbackRebate(Integer id, String staffCode) {
		Rebate rebate = rebateMapperExt.selectByPrimaryKey(id);
		if (rebate.getStatus().equals(RebateStatusEn.CALLBACK.getCode())) {
			throw new BusinessException("已撤回,不能重复撤回!");
		}
		rebate.setStatus(RebateStatusEn.CALLBACK.getCode());
		rebate.setSettleTm(DateUtil.getCurrentTime());
		rebate.setSettleMan(staffCode);
		rebateMapperExt.updateByPrimaryKey(rebate);
		if (!rebate.getAmount().isNaN()) {
			callbackByFrom(rebate);
		}
		if(rebate.getStatus().equals(RebateStatusEn.SETTLE.getCode())){
			callBackAccount(rebate);
		}
	}

	public void callbackByFrom(Rebate rebate) {
		RebateExample example = new RebateExample();
		example.createCriteria().andEarningsFromEqualTo(rebate.getUserId()).andAmountIsNull()
				.andMissionIdEqualTo(rebate.getMissionId()).andImportDateEqualTo(rebate.getImportDate());
		List<Rebate> rebates = rebateMapperExt.selectByExample(example);
		for (Rebate rebate2 : rebates) {
			rebate2.setStatus(RebateStatusEn.CALLBACK.getCode());
			rebate2.setSettleTm(DateUtil.getCurrentTime());
			rebate2.setSettleMan(rebate.getSettleMan());
			rebateMapperExt.updateByPrimaryKey(rebate2);
			if(rebate.getStatus().equals(RebateStatusEn.SETTLE.getCode())){
				callBackAccount(rebate2);
			}
		}
	}

	private void callBackAccount(Rebate rebate) {
		UserDTO dto = userManager.findDetail(rebate.getUserId());
		UserAccountDTO accountDTO = accountManager.getAccount(rebate.getUserId());
		UserAccount account = new UserAccount();
		account.setUserId(dto.getId());
		account.setAmount(rebate.getEarnings());
		account.setAmountNum(rebate.getEarnings().longValue());
		if (accountDTO == null) {
			accountDTO = new UserAccountDTO();
			accountDTO.setBalance(BigDecimal.ZERO);
			accountDTO.setTotal(BigDecimal.ZERO);
		}
		account.setBalance(accountDTO.getBalance().subtract(rebate.getEarnings()));
		account.setUserCode(dto.getUserCode());
		account.setTotal(accountDTO.getTotal().subtract(rebate.getEarnings()));
		account.setType(AccountTypeEn.CALLBACK.getCode());
		account.setCreateTime(new Date());
		account.setStatus(AccountStatusEn.DELETE.getCode());
		accountManager.insertAccount(account);
		dto.setBalance(account.getBalance().longValue());
		userManager.updateUserBalance(dto);
	}

	
	public BigDecimal sumEarnings(Integer enarnsForm,Integer levelId){
		return rebateMapperExt.sumEarnings(enarnsForm,levelId);
	}



	private RebateExample createExample(RebateSearchDTO searchDTO) {
		RebateExample example = new RebateExample();
		RebateExample.Criteria criteria = example.createCriteria();
		if (searchDTO.getMissionId() != null) {
			criteria.andMissionIdEqualTo(searchDTO.getMissionId());
		}
		if (searchDTO.getUserId() != null) {
			criteria.andUserIdEqualTo(searchDTO.getUserId());
		}
		if (StringUtils.isNotEmpty(searchDTO.getUserCode())) {
			criteria.andUserCodeEqualTo(searchDTO.getUserCode());
		}
		if (StringUtils.isNotEmpty(searchDTO.getMissionName())) {
			criteria.andMissionNameLike(searchDTO.getMissionName() + "%");
		}
		criteria.andStatusNotEqualTo(RebateStatusEn.DELETE.getCode());
		example.setOrderByClause("mission_id desc");
		return example;
	}

}
