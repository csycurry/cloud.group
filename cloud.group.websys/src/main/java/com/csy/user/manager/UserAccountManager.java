package com.csy.user.manager;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.csy.account.domain.dto.UserAccountDTO;
import com.csy.account.domain.emus.AccountStatusEn;
import com.csy.account.domain.emus.AccountTypeEn;
import com.csy.config.domain.dto.SystemConfigDTO;
import com.csy.config.domain.emus.ConfigEn;
import com.csy.config.manager.SystemConfigManager;
import com.csy.dao.UserAccountMapperExt;
import com.csy.model.UserAccount;
import com.csy.model.UserAccountExample;
import com.csy.model.base.DateUtil;

@Service
public class UserAccountManager {
	@Autowired
	private UserAccountMapperExt userAccountMapperExt;
	@Autowired
	private SystemConfigManager systemConfigManager;
	
	public UserAccountDTO getAccount(Integer userId)
	{
		UserAccountExample accountExample = new UserAccountExample();
		accountExample.createCriteria().andUserIdEqualTo(userId).andStatusEqualTo((byte)1);
		accountExample.setOrderByClause("id desc");
		List<UserAccount> list = userAccountMapperExt.selectByExample(accountExample);
		UserAccountDTO accountDTO = new UserAccountDTO();
		if(list!=null&&list.size()>0)
		{
			BeanUtils.copyProperties(list.get(0), accountDTO);
			return accountDTO;
		}
		return null;
	}
	
	public JSONObject pageSearch(String order ,int offset,int limit,Integer userId,Byte type)
	{
		JSONObject jsonObject = new JSONObject();
		UserAccountExample accountExample = new UserAccountExample();
		UserAccountExample.Criteria criteria = accountExample.createCriteria();
		if(userId!=null)
			criteria.andUserIdEqualTo(userId);
		criteria.andStatusEqualTo((byte)1);
		if(type!=null)
			criteria.andTypeEqualTo(type);
		accountExample.setOrderByClause("create_time desc");
		long count = userAccountMapperExt.countByExample(accountExample);
		if(count==0)
			return null;
		jsonObject.put("total", count);
		List<UserAccount> list = userAccountMapperExt.selectByExampleByPage(accountExample, offset, limit);
		JSONArray array = new JSONArray();
		for(UserAccount account: list)
		{
			JSONObject object =new JSONObject();
			object.put("time", DateUtil.toLocaleString(account.getCreateTime(), DateUtil.YYYY_MM_DD_HH_DD_SS));
			object.put("total", account.getAmount());
			object.put("usercode", account.getUserCode());
			object.put("reason", AccountTypeEn.toEnum(account.getType()).getMean());
			array.add(object);
		}
		jsonObject.put("rows", array);
		return jsonObject;
	}
	
	public void  insertAccount(UserAccount account)
	{
		userAccountMapperExt.insert(account);
	}
	
	public void  insertAccountDTO(UserAccountDTO accountDTO)
	{
		UserAccount account = new UserAccount();
		account.setStatus(AccountStatusEn.UNSETTLE.getCode());
		BeanUtils.copyProperties(accountDTO, account);
		userAccountMapperExt.insert(account );
	}
	
	public BigDecimal staticaccount()
	{
		BigDecimal bigDecimal = userAccountMapperExt.staticaccount();
		SystemConfigDTO configDTO = systemConfigManager.detail(ConfigEn.base_static.getCode());
		Double double1 = Double.valueOf(configDTO.getConfigValue());
		bigDecimal = bigDecimal.add(BigDecimal.valueOf(double1));
		return bigDecimal;
	}
}
