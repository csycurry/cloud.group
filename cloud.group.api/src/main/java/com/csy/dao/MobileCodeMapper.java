package com.csy.dao;

import com.csy.model.MobileCode;
import com.csy.model.MobileCodeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MobileCodeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mobile_code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    long countByExample(MobileCodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mobile_code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    int deleteByExample(MobileCodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mobile_code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mobile_code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    int insert(MobileCode record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mobile_code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    int insertSelective(MobileCode record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mobile_code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    List<MobileCode> selectByExample(MobileCodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mobile_code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    MobileCode selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mobile_code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    int updateByExampleSelective(@Param("record") MobileCode record, @Param("example") MobileCodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mobile_code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    int updateByExample(@Param("record") MobileCode record, @Param("example") MobileCodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mobile_code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    int updateByPrimaryKeySelective(MobileCode record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mobile_code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    int updateByPrimaryKey(MobileCode record);
}