package com.csy.dao;

import com.csy.model.News;
import com.csy.model.NewsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NewsMapperExt extends NewsMapper {
	List<News> selectByExampleByPage(@Param("example") NewsExample example,@Param("offset")int offset,@Param("limit") int limit);
    
}