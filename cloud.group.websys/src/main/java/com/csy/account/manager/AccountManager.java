package com.csy.account.manager;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.account.domain.dto.UserAccountDTO;
import com.csy.account.domain.dto.UserAccountSearchDTO;
import com.csy.account.domain.emus.AccountTypeEn;
import com.csy.dao.UserAccountMapperExt;
import com.csy.model.UserAccount;
import com.csy.model.UserAccountExample;
import com.csy.model.base.Pagination;

@Service
public class AccountManager {
	@Autowired
	private UserAccountMapperExt userAccountMapperExt;
	
	public Pagination<UserAccountDTO> pageSearch(UserAccountSearchDTO searchDTO)
	{
		Pagination<UserAccountDTO> pagination = new Pagination<UserAccountDTO>(searchDTO.getCurrentPage());
		UserAccountExample example = bulidExample(searchDTO);
		long count = userAccountMapperExt.countByExample(example);
		pagination.setTotalCount((int)count);
		if(count>0)
		{
			List<UserAccount> newsList= userAccountMapperExt.selectByExampleByPage(example, pagination.getOffset(), pagination.getPageSize());
			List<UserAccountDTO> retList = new ArrayList<UserAccountDTO>(newsList.size());
			for (UserAccount result : newsList) {
				UserAccountDTO accountDTO = new UserAccountDTO();
				BeanUtils.copyProperties(result, accountDTO);
				retList.add(accountDTO);
//				missionDTO.setCreateDate(DateUtil.toLocaleString(result.getCreateTm(), "YYYY-MM-dd"));
				if(result.getType()!=null)
					accountDTO.setTypeCn(AccountTypeEn.toEnum(result.getType().byteValue()).getMean());
			}
			pagination.setList(retList);
		}
		 
		return pagination;
	}
	
	private UserAccountExample bulidExample(UserAccountSearchDTO searchDTO) {
		UserAccountExample example = new UserAccountExample();
		UserAccountExample.Criteria criteria = example.createCriteria();
		if(searchDTO.getType()!=null)
			criteria.andTypeEqualTo(searchDTO.getType());
		if(searchDTO.getUserId()!=null)
			criteria.andUserIdEqualTo(searchDTO.getUserId());
			example.setOrderByClause("id desc");
		
		return example;
	}
	
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
	
	public void  insertAccount(UserAccount account)
	{
		userAccountMapperExt.insert(account);
	}
}
