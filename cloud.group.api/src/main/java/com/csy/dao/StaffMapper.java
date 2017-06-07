package com.csy.dao;

import com.csy.model.Staff;
import com.csy.model.StaffExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StaffMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_staff
     *
     * @mbg.generated Mon Dec 26 00:13:17 CST 2016
     */
    long countByExample(StaffExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_staff
     *
     * @mbg.generated Mon Dec 26 00:13:17 CST 2016
     */
    int deleteByExample(StaffExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_staff
     *
     * @mbg.generated Mon Dec 26 00:13:17 CST 2016
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_staff
     *
     * @mbg.generated Mon Dec 26 00:13:17 CST 2016
     */
    int insert(Staff record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_staff
     *
     * @mbg.generated Mon Dec 26 00:13:17 CST 2016
     */
    int insertSelective(Staff record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_staff
     *
     * @mbg.generated Mon Dec 26 00:13:17 CST 2016
     */
    List<Staff> selectByExample(StaffExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_staff
     *
     * @mbg.generated Mon Dec 26 00:13:17 CST 2016
     */
    Staff selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_staff
     *
     * @mbg.generated Mon Dec 26 00:13:17 CST 2016
     */
    int updateByExampleSelective(@Param("record") Staff record, @Param("example") StaffExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_staff
     *
     * @mbg.generated Mon Dec 26 00:13:17 CST 2016
     */
    int updateByExample(@Param("record") Staff record, @Param("example") StaffExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_staff
     *
     * @mbg.generated Mon Dec 26 00:13:17 CST 2016
     */
    int updateByPrimaryKeySelective(Staff record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_staff
     *
     * @mbg.generated Mon Dec 26 00:13:17 CST 2016
     */
    int updateByPrimaryKey(Staff record);
}