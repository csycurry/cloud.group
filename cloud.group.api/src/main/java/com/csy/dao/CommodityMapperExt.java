package com.csy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.csy.model.User;
import com.csy.model.UserExample;

public interface CommodityMapperExt extends CommodityMapper{
	List<User> selectUserWithPage(@Param("example") UserExample example,@Param("offset")int offset,@Param("limit") int limit);
}