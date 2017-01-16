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
import com.csy.config.domain.dto.SystemConfigDTO;
import com.csy.config.domain.emus.ConfigEn;
import com.csy.config.manager.SystemConfigManager;
import com.csy.dao.RebateMapperExt;
import com.csy.exception.BusinessException;
import com.csy.mission.domain.dto.MissionExtendDTO;
import com.csy.mission.manager.MissionManager;
import com.csy.model.Rebate;
import com.csy.model.RebateExample;
import com.csy.model.UserAccount;
import com.csy.model.UserLevel;
import com.csy.model.base.DateUtil;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;
import com.csy.rebate.domain.dto.RebateDTO;
import com.csy.rebate.domain.dto.RebateSearchDTO;
import com.csy.rebate.domain.emus.RebateLEVELEn;
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

	public void editRebate(RebateDTO dto, String staffCode) {
		Rebate rebate = new Rebate();
		BeanUtils.copyProperties(dto, rebate);
		SystemConfigDTO configDTO = systemConfigManager.detail(ConfigEn.exchangerate.getCode());
		MissionExtendDTO missionDTO = missionManager.detail(dto.getMissionId());
		Double amount = (dto.getEarnings().doubleValue() * Double.parseDouble(configDTO.getConfigValue())
				/ missionDTO.getPrice().doubleValue());
		rebate.setAmount(fixDouble(amount));
		rebate.setModifior(staffCode);
		rebate.setModifyTm(DateUtil.getCurrentTime());
		rebateMapperExt.updateByPrimaryKeySelective(rebate);
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
		SystemConfigDTO configDTO =systemConfigManager.detail(ConfigEn.exchangerate.getCode());
		account.setAmount(rebate.getEarnings().divide(new BigDecimal(configDTO.getConfigValue())));
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
		SystemConfigDTO configDTO =systemConfigManager.detail(ConfigEn.exchangerate.getCode());
		account.setAmount(rebate.getEarnings().divide(new BigDecimal(configDTO.getConfigValue())));
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

	public void inserBatch(String[][] bodys, int missionId, String staffCode) {
		String[] title = bodys[0];
		List<Rebate> rebates = new ArrayList<>();
		MissionExtendDTO missionDTO = missionManager.detail(missionId);
		if (title[1].equals("点击数")) {
			for (String[] body : bodys) {
				Rebate rebate = bulid(body);
				if (rebate == null)
					continue;
				rebate.setMissionId(missionId);
				rebate.setMissionName(missionDTO.getMissionTitle());
				rebate.setAmount(Double.parseDouble(body[1]));
				BigDecimal earning = BigDecimal
						.valueOf(missionDTO.getPrice().doubleValue() * Double.parseDouble(body[1]));
				rebate.setEarnings(earning);
				rebate.setCreateTm(DateUtil.getCurrentTime());
				rebate.setCreator(staffCode);
				rebates.add(rebate);
				addLevel(rebate, rebates);
			}
		} else if (title[1].equals("奖励")) {
			SystemConfigDTO configDTO = systemConfigManager.detail(ConfigEn.exchangerate.getCode());
			for (String[] body : bodys) {
				Rebate rebate = bulid(body);
				if (rebate == null)
					continue;
				rebate.setMissionId(missionId);
				rebate.setEarnings(BigDecimal.valueOf(Double.parseDouble(body[1])));
				Double amount = (Double.parseDouble(body[1]) * Double.parseDouble(configDTO.getConfigValue())
						/ missionDTO.getPrice().doubleValue());
				rebate.setAmount(fixDouble(amount));
				rebate.setCreateTm(DateUtil.getCurrentTime());
				rebate.setCreator(staffCode);
				rebates.add(rebate);
				addLevel(rebate, rebates);
			}
		}
		if (rebates.isEmpty()) {
			return;
		}
		rebateMapperExt.insertBatch(rebates);

	}

	private void addLevel(Rebate rebate, List<Rebate> rebates) {
		UserLevel userLevel = userManager.getLevel(rebate.getUserId());
		if (userLevel == null) {
			return;
		}

		if (userLevel.getLevel1() != null) {
			Rebate rebate1 = bulid(rebate, userLevel.getLevel1(), RebateLEVELEn.LEVEL1.getLevel());
			rebates.add(rebate1);
		}
		if (userLevel.getLevel2() != null) {
			Rebate rebate1 = bulid(rebate, userLevel.getLevel2(), RebateLEVELEn.LEVEL2.getLevel());
			rebates.add(rebate1);
		}
		if (userLevel.getLevel3() != null) {
			Rebate rebate1 = bulid(rebate, userLevel.getLevel3(), RebateLEVELEn.LEVEL3.getLevel());
			rebates.add(rebate1);
		}
		if (userLevel.getLevel4() != null) {
			Rebate rebate1 = bulid(rebate, userLevel.getLevel4(), RebateLEVELEn.LEVEL4.getLevel());
			rebates.add(rebate1);
		}
		if (userLevel.getLevel5() != null) {
			Rebate rebate1 = bulid(rebate, userLevel.getLevel5(), RebateLEVELEn.LEVEL5.getLevel());
			rebates.add(rebate1);
		}

	}

	private Rebate bulid(Rebate rebate, int userId, double level) {
		Rebate rebate1 = new Rebate();
		UserDTO userDTO = userManager.findDetail(userId);
		if (userDTO == null) {
			return null;
		}
		rebate1.setUserCode(userDTO.getUserCode());
		rebate1.setUserId(userDTO.getId());
		rebate1.setUserName(userDTO.getUserCode());
		rebate1.setStatus(RebateStatusEn.UNSETTLE.getCode());
		rebate1.setEarningsFrom(rebate.getUserId());
		rebate1.setType((byte) 0);
		rebate1.setImportDate(DateUtil.getCurrentDate());
		rebate1.setCreateTm(DateUtil.getCurrentTime());
		rebate1.setMissionId(rebate.getMissionId());
		rebate1.setMissionName(rebate.getMissionName());
		rebate1.setCreator(rebate.getCreator());
		rebate1.setEarnings(rebate.getEarnings().multiply(BigDecimal.valueOf(level)));
		rebate.setEarnings(rebate.getEarnings().subtract(rebate1.getEarnings()));
		return rebate1;
	}

	private double fixDouble(double amount) {
		BigDecimal decimal = new BigDecimal(amount);
		double d = decimal.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
		return d;
	}

	private Rebate bulid(String[] body) {
		Rebate rebate = new Rebate();
		UserDTO userDTO = userManager.getUserByCode(body[0]);
		if (userDTO == null) {
			return null;
		}
		rebate.setUserCode(body[0]);
		rebate.setUserId(userDTO.getId());
		rebate.setEarningsFrom(userDTO.getId());
		rebate.setUserName(userDTO.getUserCode());
		rebate.setStatus(RebateStatusEn.UNSETTLE.getCode());
		rebate.setImportDate(DateUtil.getCurrentDate());
		rebate.setType((byte) 0);
		return rebate;
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
