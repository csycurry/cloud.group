package com.csy.dao;

import com.csy.model.NewsBanner;
import com.csy.model.NewsBannerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NewsBannerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    long countByExample(NewsBannerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int deleteByExample(NewsBannerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int insert(NewsBanner record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int insertSelective(NewsBanner record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    List<NewsBanner> selectByExample(NewsBannerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    NewsBanner selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByExampleSelective(@Param("record") NewsBanner record, @Param("example") NewsBannerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByExample(@Param("record") NewsBanner record, @Param("example") NewsBannerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByPrimaryKeySelective(NewsBanner record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table news_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    int updateByPrimaryKey(NewsBanner record);
}