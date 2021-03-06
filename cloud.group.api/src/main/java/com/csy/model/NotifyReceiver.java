package com.csy.model;

import java.io.Serializable;
import java.util.Date;

public class NotifyReceiver implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.id
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.mtype
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Byte mtype;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.notify_id
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Integer notifyId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.target_type
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Integer targetType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.target_id
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Integer targetId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.target_name
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private String targetName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.city_id
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Integer cityId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.is_delete
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Byte isDelete;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.status
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Byte status;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.is_time_limit
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Byte isTimeLimit;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.tm_begin
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Date tmBegin;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.tm_end
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Date tmEnd;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.message_imei_type
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Integer messageImeiType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.is_force_read
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Byte isForceRead;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.send_tm
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Date sendTm;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.del_tm
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Date delTm;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.ins_tm
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Date insTm;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.upd_tm
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private Date updTm;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify_receiver.content
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table notify_receiver
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.id
     *
     * @return the value of notify_receiver.id
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.id
     *
     * @param id the value for notify_receiver.id
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.mtype
     *
     * @return the value of notify_receiver.mtype
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Byte getMtype() {
        return mtype;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.mtype
     *
     * @param mtype the value for notify_receiver.mtype
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setMtype(Byte mtype) {
        this.mtype = mtype;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.notify_id
     *
     * @return the value of notify_receiver.notify_id
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Integer getNotifyId() {
        return notifyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.notify_id
     *
     * @param notifyId the value for notify_receiver.notify_id
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setNotifyId(Integer notifyId) {
        this.notifyId = notifyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.target_type
     *
     * @return the value of notify_receiver.target_type
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Integer getTargetType() {
        return targetType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.target_type
     *
     * @param targetType the value for notify_receiver.target_type
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setTargetType(Integer targetType) {
        this.targetType = targetType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.target_id
     *
     * @return the value of notify_receiver.target_id
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Integer getTargetId() {
        return targetId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.target_id
     *
     * @param targetId the value for notify_receiver.target_id
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setTargetId(Integer targetId) {
        this.targetId = targetId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.target_name
     *
     * @return the value of notify_receiver.target_name
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public String getTargetName() {
        return targetName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.target_name
     *
     * @param targetName the value for notify_receiver.target_name
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setTargetName(String targetName) {
        this.targetName = targetName == null ? null : targetName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.city_id
     *
     * @return the value of notify_receiver.city_id
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Integer getCityId() {
        return cityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.city_id
     *
     * @param cityId the value for notify_receiver.city_id
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.is_delete
     *
     * @return the value of notify_receiver.is_delete
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Byte getIsDelete() {
        return isDelete;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.is_delete
     *
     * @param isDelete the value for notify_receiver.is_delete
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setIsDelete(Byte isDelete) {
        this.isDelete = isDelete;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.status
     *
     * @return the value of notify_receiver.status
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.status
     *
     * @param status the value for notify_receiver.status
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setStatus(Byte status) {
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.is_time_limit
     *
     * @return the value of notify_receiver.is_time_limit
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Byte getIsTimeLimit() {
        return isTimeLimit;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.is_time_limit
     *
     * @param isTimeLimit the value for notify_receiver.is_time_limit
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setIsTimeLimit(Byte isTimeLimit) {
        this.isTimeLimit = isTimeLimit;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.tm_begin
     *
     * @return the value of notify_receiver.tm_begin
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Date getTmBegin() {
        return tmBegin;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.tm_begin
     *
     * @param tmBegin the value for notify_receiver.tm_begin
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setTmBegin(Date tmBegin) {
        this.tmBegin = tmBegin;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.tm_end
     *
     * @return the value of notify_receiver.tm_end
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Date getTmEnd() {
        return tmEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.tm_end
     *
     * @param tmEnd the value for notify_receiver.tm_end
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setTmEnd(Date tmEnd) {
        this.tmEnd = tmEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.message_imei_type
     *
     * @return the value of notify_receiver.message_imei_type
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Integer getMessageImeiType() {
        return messageImeiType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.message_imei_type
     *
     * @param messageImeiType the value for notify_receiver.message_imei_type
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setMessageImeiType(Integer messageImeiType) {
        this.messageImeiType = messageImeiType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.is_force_read
     *
     * @return the value of notify_receiver.is_force_read
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Byte getIsForceRead() {
        return isForceRead;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.is_force_read
     *
     * @param isForceRead the value for notify_receiver.is_force_read
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setIsForceRead(Byte isForceRead) {
        this.isForceRead = isForceRead;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.send_tm
     *
     * @return the value of notify_receiver.send_tm
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Date getSendTm() {
        return sendTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.send_tm
     *
     * @param sendTm the value for notify_receiver.send_tm
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setSendTm(Date sendTm) {
        this.sendTm = sendTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.del_tm
     *
     * @return the value of notify_receiver.del_tm
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Date getDelTm() {
        return delTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.del_tm
     *
     * @param delTm the value for notify_receiver.del_tm
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setDelTm(Date delTm) {
        this.delTm = delTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.ins_tm
     *
     * @return the value of notify_receiver.ins_tm
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Date getInsTm() {
        return insTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.ins_tm
     *
     * @param insTm the value for notify_receiver.ins_tm
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setInsTm(Date insTm) {
        this.insTm = insTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.upd_tm
     *
     * @return the value of notify_receiver.upd_tm
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public Date getUpdTm() {
        return updTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.upd_tm
     *
     * @param updTm the value for notify_receiver.upd_tm
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setUpdTm(Date updTm) {
        this.updTm = updTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify_receiver.content
     *
     * @return the value of notify_receiver.content
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify_receiver.content
     *
     * @param content the value for notify_receiver.content
     *
     * @mbg.generated Thu Dec 01 23:05:51 CST 2016
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}