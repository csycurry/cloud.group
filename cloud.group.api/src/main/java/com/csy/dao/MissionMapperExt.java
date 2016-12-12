package com.csy.dao;

import com.csy.model.Mission;
import com.csy.model.MissionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MissionMapperExt extends MissionMapper{
	List<Mission> selectExampleWithPage(@Param("example") MissionExample example,@Param("offset")int offset,@Param("limit") int limit);
}