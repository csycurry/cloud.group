package com.csy.dao;

import com.csy.model.NotifyReceiver;
import com.csy.model.NotifyReceiverExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NotifyReceiverMapperExt extends NotifyReceiverMapper{
	List<NotifyReceiver> selectByExampleByPage(@Param("example") NotifyReceiverExample example,@Param("offset")int offset,@Param("limit") int limit);
    
}