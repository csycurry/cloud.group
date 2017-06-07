package com.csy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.csy.model.UserLevel;
import com.csy.model.UserLevelExample;

public interface UserLevelMapperExt extends UserLevelMapper{
	List<UserLevel> selectUserWithPage(@Param("example") UserLevelExample example,@Param("offset")int offset,@Param("limit") int limit);
}