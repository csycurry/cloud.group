package com.csy.dao;

import com.csy.model.Rebate;
import com.csy.model.RebateExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RebateMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Mar 28 01:18:40 CST 2017
     */
    long countByExample(RebateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Mar 28 01:18:40 CST 2017
     */
    int deleteByExample(RebateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Mar 28 01:18:40 CST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Mar 28 01:18:40 CST 2017
     */
    int insert(Rebate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Mar 28 01:18:40 CST 2017
     */
    int insertSelective(Rebate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Mar 28 01:18:40 CST 2017
     */
    List<Rebate> selectByExample(RebateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Mar 28 01:18:40 CST 2017
     */
    Rebate selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Mar 28 01:18:40 CST 2017
     */
    int updateByExampleSelective(@Param("record") Rebate record, @Param("example") RebateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Mar 28 01:18:40 CST 2017
     */
    int updateByExample(@Param("record") Rebate record, @Param("example") RebateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Mar 28 01:18:40 CST 2017
     */
    int updateByPrimaryKeySelective(Rebate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Mar 28 01:18:40 CST 2017
     */
    int updateByPrimaryKey(Rebate record);
}