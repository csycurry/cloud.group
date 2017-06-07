package com.csy.dao;

import com.csy.model.User;
import com.csy.model.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMapperExt extends UserMapper{
    
    //+++++++++++++++++++++++++++++++++
    List<User> selectUserWithPage(@Param("example") UserExample example,@Param("offset")int offset,@Param("limit") int limit);
    int changeBalance(User user);
    
    List<User> checkUser(@Param("user") User user);
}