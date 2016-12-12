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
     * @mbg.generated Tue Nov 29 15:03:15 CST 2016
     */
    long countByExample(RebateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Nov 29 15:03:15 CST 2016
     */
    int deleteByExample(RebateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Nov 29 15:03:15 CST 2016
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Nov 29 15:03:15 CST 2016
     */
    int insert(Rebate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Nov 29 15:03:15 CST 2016
     */
    int insertSelective(Rebate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Nov 29 15:03:15 CST 2016
     */
    List<Rebate> selectByExample(RebateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Nov 29 15:03:15 CST 2016
     */
    Rebate selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Nov 29 15:03:15 CST 2016
     */
    int updateByExampleSelective(@Param("record") Rebate record, @Param("example") RebateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Nov 29 15:03:15 CST 2016
     */
    int updateByExample(@Param("record") Rebate record, @Param("example") RebateExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Nov 29 15:03:15 CST 2016
     */
    int updateByPrimaryKeySelective(Rebate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rebate
     *
     * @mbg.generated Tue Nov 29 15:03:15 CST 2016
     */
    int updateByPrimaryKey(Rebate record);
}