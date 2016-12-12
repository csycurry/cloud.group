package com.csy.model;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.id
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.user_code
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private String userCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.user_name
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private String userName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.user_mail
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private String userMail;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.user_qq
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private String userQq;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.user_mobile
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private String userMobile;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.user_pwd
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private String userPwd;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.create_time
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private Date createTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.login_time
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private Date loginTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.balance
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private Long balance;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.login_ip
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private String loginIp;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.user_alipay
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private String userAlipay;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.id
     *
     * @return the value of user.id
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.id
     *
     * @param id the value for user.id
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.user_code
     *
     * @return the value of user.user_code
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public String getUserCode() {
        return userCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.user_code
     *
     * @param userCode the value for user.user_code
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public void setUserCode(String userCode) {
        this.userCode = userCode == null ? null : userCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.user_name
     *
     * @return the value of user.user_name
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public String getUserName() {
        return userName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.user_name
     *
     * @param userName the value for user.user_name
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.user_mail
     *
     * @return the value of user.user_mail
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public String getUserMail() {
        return userMail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.user_mail
     *
     * @param userMail the value for user.user_mail
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public void setUserMail(String userMail) {
        this.userMail = userMail == null ? null : userMail.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.user_qq
     *
     * @return the value of user.user_qq
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public String getUserQq() {
        return userQq;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.user_qq
     *
     * @param userQq the value for user.user_qq
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public void setUserQq(String userQq) {
        this.userQq = userQq == null ? null : userQq.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.user_mobile
     *
     * @return the value of user.user_mobile
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public String getUserMobile() {
        return userMobile;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.user_mobile
     *
     * @param userMobile the value for user.user_mobile
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public void setUserMobile(String userMobile) {
        this.userMobile = userMobile == null ? null : userMobile.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.user_pwd
     *
     * @return the value of user.user_pwd
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public String getUserPwd() {
        return userPwd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.user_pwd
     *
     * @param userPwd the value for user.user_pwd
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd == null ? null : userPwd.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.create_time
     *
     * @return the value of user.create_time
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.create_time
     *
     * @param createTime the value for user.create_time
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.login_time
     *
     * @return the value of user.login_time
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public Date getLoginTime() {
        return loginTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.login_time
     *
     * @param loginTime the value for user.login_time
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.balance
     *
     * @return the value of user.balance
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public Long getBalance() {
        return balance;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.balance
     *
     * @param balance the value for user.balance
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public void setBalance(Long balance) {
        this.balance = balance;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.login_ip
     *
     * @return the value of user.login_ip
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public String getLoginIp() {
        return loginIp;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.login_ip
     *
     * @param loginIp the value for user.login_ip
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp == null ? null : loginIp.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.user_alipay
     *
     * @return the value of user.user_alipay
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public String getUserAlipay() {
        return userAlipay;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.user_alipay
     *
     * @param userAlipay the value for user.user_alipay
     *
     * @mbg.generated Fri Dec 02 00:21:36 CST 2016
     */
    public void setUserAlipay(String userAlipay) {
        this.userAlipay = userAlipay == null ? null : userAlipay.trim();
    }
}