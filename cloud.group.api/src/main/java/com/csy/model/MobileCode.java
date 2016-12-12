package com.csy.model;

import java.io.Serializable;
import java.util.Date;

public class MobileCode implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column mobile_code.id
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column mobile_code.moblic
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    private String moblic;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column mobile_code.code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    private String code;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column mobile_code.create_time
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table mobile_code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column mobile_code.id
     *
     * @return the value of mobile_code.id
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column mobile_code.id
     *
     * @param id the value for mobile_code.id
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column mobile_code.moblic
     *
     * @return the value of mobile_code.moblic
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    public String getMoblic() {
        return moblic;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column mobile_code.moblic
     *
     * @param moblic the value for mobile_code.moblic
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    public void setMoblic(String moblic) {
        this.moblic = moblic == null ? null : moblic.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column mobile_code.code
     *
     * @return the value of mobile_code.code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    public String getCode() {
        return code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column mobile_code.code
     *
     * @param code the value for mobile_code.code
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column mobile_code.create_time
     *
     * @return the value of mobile_code.create_time
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column mobile_code.create_time
     *
     * @param createTime the value for mobile_code.create_time
     *
     * @mbg.generated Wed Dec 07 01:16:55 CST 2016
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}