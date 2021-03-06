package com.csy.dao;

import com.csy.model.Role;
import com.csy.model.RoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RoleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_role
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    long countByExample(RoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_role
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int deleteByExample(RoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_role
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_role
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int insert(Role record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_role
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int insertSelective(Role record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_role
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    List<Role> selectByExample(RoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_role
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    Role selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_role
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByExampleSelective(@Param("record") Role record, @Param("example") RoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_role
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByExample(@Param("record") Role record, @Param("example") RoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_role
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByPrimaryKeySelective(Role record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_role
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByPrimaryKey(Role record);
}