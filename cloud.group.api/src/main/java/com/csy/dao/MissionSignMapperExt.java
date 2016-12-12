package com.csy.dao;

import com.csy.model.MissionSign;
import com.csy.model.MissionSignExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MissionSignMapperExt extends MissionSignMapper{
	List<MissionSign> selectExampleWithPage(@Param("example") MissionSignExample example,@Param("offset")int offset,@Param("limit") int limit);

}