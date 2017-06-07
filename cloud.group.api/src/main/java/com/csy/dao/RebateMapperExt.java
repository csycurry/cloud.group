package com.csy.dao;

import com.csy.model.Rebate;
import com.csy.model.RebateExample;

import java.math.BigDecimal;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RebateMapperExt extends RebateMapper{
	List<Rebate> selectByExampleByPage(@Param("example") RebateExample example,@Param("offset")int offset,@Param("limit") int limit);
    
	void insertBatch(List<Rebate> list);
	
	BigDecimal sumEarnings(@Param("earningsFrom")  Integer earnFrom,@Param("userId")  Integer userId);
}