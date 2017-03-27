package com.csy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.csy.model.Commodity;
import com.csy.model.CommodityExample;

public interface CommodityMapperExt extends CommodityMapper{
	List<Commodity> selectUserWithPage(@Param("example") CommodityExample example,@Param("offset")int offset,@Param("limit") int limit);
	
	void insertBatch(List<Commodity> list);
}