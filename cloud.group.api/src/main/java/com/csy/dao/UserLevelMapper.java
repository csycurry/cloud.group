package com.csy.dao;

import com.csy.model.UserLevel;
import com.csy.model.UserLevelExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserLevelMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_level
     *
     * @mbg.generated Tue Feb 07 22:12:27 CST 2017
     */
    long countByExample(UserLevelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_level
     *
     * @mbg.generated Tue Feb 07 22:12:27 CST 2017
     */
    int deleteByExample(UserLevelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_level
     *
     * @mbg.generated Tue Feb 07 22:12:27 CST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_level
     *
     * @mbg.generated Tue Feb 07 22:12:27 CST 2017
     */
    int insert(UserLevel record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_level
     *
     * @mbg.generated Tue Feb 07 22:12:27 CST 2017
     */
    int insertSelective(UserLevel record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_level
     *
     * @mbg.generated Tue Feb 07 22:12:27 CST 2017
     */
    List<UserLevel> selectByExample(UserLevelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_level
     *
     * @mbg.generated Tue Feb 07 22:12:27 CST 2017
     */
    UserLevel selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_level
     *
     * @mbg.generated Tue Feb 07 22:12:27 CST 2017
     */
    int updateByExampleSelective(@Param("record") UserLevel record, @Param("example") UserLevelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_level
     *
     * @mbg.generated Tue Feb 07 22:12:27 CST 2017
     */
    int updateByExample(@Param("record") UserLevel record, @Param("example") UserLevelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_level
     *
     * @mbg.generated Tue Feb 07 22:12:27 CST 2017
     */
    int updateByPrimaryKeySelective(UserLevel record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_level
     *
     * @mbg.generated Tue Feb 07 22:12:27 CST 2017
     */
    int updateByPrimaryKey(UserLevel record);
}