package com.csy.user.manager;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.dao.UserAccountMapper;
import com.csy.model.UserAccount;
import com.csy.model.UserAccountExample;
import com.csy.user.domain.dto.UserAccountDTO;

@Service
public class UserAccountManager {
	@Autowired
	private UserAccountMapper userAccountMapper;
	
	public UserAccountDTO getAccount(Integer userId)
	{
		UserAccountExample accountExample = new UserAccountExample();
		accountExample.createCriteria().andUserIdEqualTo(userId).andStatusEqualTo((byte)1);
		accountExample.setOrderByClause("id desc");
		List<UserAccount> list = userAccountMapper.selectByExample(accountExample);
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
		userAccountMapper.insert(account);
	}
}
