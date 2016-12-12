package com.csy.dao;

import com.csy.model.Authority;
import com.csy.model.AuthorityExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AuthorityMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_authority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    long countByExample(AuthorityExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_authority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int deleteByExample(AuthorityExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_authority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_authority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int insert(Authority record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_authority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int insertSelective(Authority record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_authority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    List<Authority> selectByExample(AuthorityExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_authority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    Authority selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_authority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByExampleSelective(@Param("record") Authority record, @Param("example") AuthorityExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_authority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByExample(@Param("record") Authority record, @Param("example") AuthorityExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_authority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByPrimaryKeySelective(Authority record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_authority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByPrimaryKey(Authority record);
}