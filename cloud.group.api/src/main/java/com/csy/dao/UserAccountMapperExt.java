package com.csy.dao;

import com.csy.model.UserAccount;
import com.csy.model.UserAccountExample;

import java.math.BigDecimal;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserAccountMapperExt extends UserAccountMapper{
	List<UserAccount> selectByExampleByPage(@Param("example") UserAccountExample example,@Param("offset")int offset,@Param("limit") int limit);
    
	BigDecimal staticaccount();
}