package com.csy.dao;

import com.csy.model.MissionSign;
import com.csy.model.MissionSignExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MissionSignMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mission_sign
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    long countByExample(MissionSignExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mission_sign
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int deleteByExample(MissionSignExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mission_sign
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mission_sign
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int insert(MissionSign record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mission_sign
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int insertSelective(MissionSign record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mission_sign
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    List<MissionSign> selectByExample(MissionSignExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mission_sign
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    MissionSign selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mission_sign
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByExampleSelective(@Param("record") MissionSign record, @Param("example") MissionSignExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mission_sign
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByExample(@Param("record") MissionSign record, @Param("example") MissionSignExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mission_sign
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByPrimaryKeySelective(MissionSign record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mission_sign
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByPrimaryKey(MissionSign record);
}