package com.csy.dao;

import com.csy.model.MissionCode;
import java.util.List;

public interface MissionCodeMapperExt extends MissionCodeMapper{
	void insertBatch(List<MissionCode> list);
}