package com.csy.model;

import java.io.Serializable;
import java.util.Date;

public class Notify implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.id
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.city_id
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Integer cityId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.city_list
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private String cityList;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.message_sender_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Integer messageSenderType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.message_imei_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Integer messageImeiType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.title
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private String title;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.desc
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private String desc;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.image
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private String image;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.url
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private String url;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.status
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Byte status;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Byte type;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.classify_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Byte classifyType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.classify_sub_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Byte classifySubType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.is_force_read
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Byte isForceRead;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.is_time_limit
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Byte isTimeLimit;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.tm_begin
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Date tmBegin;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.tm_end
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Date tmEnd;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.oper_id
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Integer operId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.oper
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private String oper;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.publish_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Byte publishType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.predict_tm
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Date predictTm;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.push_method
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Byte pushMethod;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.push_msg
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private String pushMsg;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.priority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Byte priority;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.ins_tm
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Date insTm;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.upd_tm
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private Date updTm;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column notify.content
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table notify
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.id
     *
     * @return the value of notify.id
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.id
     *
     * @param id the value for notify.id
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.city_id
     *
     * @return the value of notify.city_id
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Integer getCityId() {
        return cityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.city_id
     *
     * @param cityId the value for notify.city_id
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.city_list
     *
     * @return the value of notify.city_list
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public String getCityList() {
        return cityList;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.city_list
     *
     * @param cityList the value for notify.city_list
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setCityList(String cityList) {
        this.cityList = cityList == null ? null : cityList.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.message_sender_type
     *
     * @return the value of notify.message_sender_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Integer getMessageSenderType() {
        return messageSenderType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.message_sender_type
     *
     * @param messageSenderType the value for notify.message_sender_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setMessageSenderType(Integer messageSenderType) {
        this.messageSenderType = messageSenderType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.message_imei_type
     *
     * @return the value of notify.message_imei_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Integer getMessageImeiType() {
        return messageImeiType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.message_imei_type
     *
     * @param messageImeiType the value for notify.message_imei_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setMessageImeiType(Integer messageImeiType) {
        this.messageImeiType = messageImeiType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.title
     *
     * @return the value of notify.title
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.title
     *
     * @param title the value for notify.title
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.desc
     *
     * @return the value of notify.desc
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public String getDesc() {
        return desc;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.desc
     *
     * @param desc the value for notify.desc
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setDesc(String desc) {
        this.desc = desc == null ? null : desc.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.image
     *
     * @return the value of notify.image
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public String getImage() {
        return image;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.image
     *
     * @param image the value for notify.image
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.url
     *
     * @return the value of notify.url
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public String getUrl() {
        return url;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.url
     *
     * @param url the value for notify.url
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.status
     *
     * @return the value of notify.status
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.status
     *
     * @param status the value for notify.status
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setStatus(Byte status) {
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.type
     *
     * @return the value of notify.type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Byte getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.type
     *
     * @param type the value for notify.type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setType(Byte type) {
        this.type = type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.classify_type
     *
     * @return the value of notify.classify_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Byte getClassifyType() {
        return classifyType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.classify_type
     *
     * @param classifyType the value for notify.classify_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setClassifyType(Byte classifyType) {
        this.classifyType = classifyType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.classify_sub_type
     *
     * @return the value of notify.classify_sub_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Byte getClassifySubType() {
        return classifySubType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.classify_sub_type
     *
     * @param classifySubType the value for notify.classify_sub_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setClassifySubType(Byte classifySubType) {
        this.classifySubType = classifySubType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.is_force_read
     *
     * @return the value of notify.is_force_read
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Byte getIsForceRead() {
        return isForceRead;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.is_force_read
     *
     * @param isForceRead the value for notify.is_force_read
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setIsForceRead(Byte isForceRead) {
        this.isForceRead = isForceRead;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.is_time_limit
     *
     * @return the value of notify.is_time_limit
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Byte getIsTimeLimit() {
        return isTimeLimit;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.is_time_limit
     *
     * @param isTimeLimit the value for notify.is_time_limit
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setIsTimeLimit(Byte isTimeLimit) {
        this.isTimeLimit = isTimeLimit;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.tm_begin
     *
     * @return the value of notify.tm_begin
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Date getTmBegin() {
        return tmBegin;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.tm_begin
     *
     * @param tmBegin the value for notify.tm_begin
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setTmBegin(Date tmBegin) {
        this.tmBegin = tmBegin;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.tm_end
     *
     * @return the value of notify.tm_end
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Date getTmEnd() {
        return tmEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.tm_end
     *
     * @param tmEnd the value for notify.tm_end
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setTmEnd(Date tmEnd) {
        this.tmEnd = tmEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.oper_id
     *
     * @return the value of notify.oper_id
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Integer getOperId() {
        return operId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.oper_id
     *
     * @param operId the value for notify.oper_id
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setOperId(Integer operId) {
        this.operId = operId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.oper
     *
     * @return the value of notify.oper
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public String getOper() {
        return oper;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.oper
     *
     * @param oper the value for notify.oper
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setOper(String oper) {
        this.oper = oper == null ? null : oper.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.publish_type
     *
     * @return the value of notify.publish_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Byte getPublishType() {
        return publishType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.publish_type
     *
     * @param publishType the value for notify.publish_type
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setPublishType(Byte publishType) {
        this.publishType = publishType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.predict_tm
     *
     * @return the value of notify.predict_tm
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Date getPredictTm() {
        return predictTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.predict_tm
     *
     * @param predictTm the value for notify.predict_tm
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setPredictTm(Date predictTm) {
        this.predictTm = predictTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.push_method
     *
     * @return the value of notify.push_method
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Byte getPushMethod() {
        return pushMethod;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.push_method
     *
     * @param pushMethod the value for notify.push_method
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setPushMethod(Byte pushMethod) {
        this.pushMethod = pushMethod;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.push_msg
     *
     * @return the value of notify.push_msg
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public String getPushMsg() {
        return pushMsg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.push_msg
     *
     * @param pushMsg the value for notify.push_msg
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setPushMsg(String pushMsg) {
        this.pushMsg = pushMsg == null ? null : pushMsg.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.priority
     *
     * @return the value of notify.priority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Byte getPriority() {
        return priority;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.priority
     *
     * @param priority the value for notify.priority
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setPriority(Byte priority) {
        this.priority = priority;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.ins_tm
     *
     * @return the value of notify.ins_tm
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Date getInsTm() {
        return insTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.ins_tm
     *
     * @param insTm the value for notify.ins_tm
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setInsTm(Date insTm) {
        this.insTm = insTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.upd_tm
     *
     * @return the value of notify.upd_tm
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Date getUpdTm() {
        return updTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.upd_tm
     *
     * @param updTm the value for notify.upd_tm
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setUpdTm(Date updTm) {
        this.updTm = updTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column notify.content
     *
     * @return the value of notify.content
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column notify.content
     *
     * @param content the value for notify.content
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}