package com.csy.message.domain.dto;

import java.io.Serializable;
import java.util.Date;

public class NotifyDTO implements Serializable {
    private Integer id;

    private Integer cityId;

    private String cityList;

    private Integer messageSenderType;

    private Integer messageImeiType;

    private String title;

    private String desc;

    private String image;

    private String url;

    private Byte status;

    private Byte type;

    private Byte classifyType;

    private Byte classifySubType;

    private Byte isForceRead;

    private Byte isTimeLimit;

    private Date tmBegin;
    private Date tmEnd;

    private Integer operId;

    private String oper;

    private Byte publishType;

    private Date predictTm;

    private Byte pushMethod;

    private String pushMsg;

    private Byte priority;

    private Date insTm;

    private Date updTm;

    private String content;

    private static final long serialVersionUID = 1L;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCityId() {
		return cityId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	public String getCityList() {
		return cityList;
	}

	public void setCityList(String cityList) {
		this.cityList = cityList;
	}

	public Integer getMessageSenderType() {
		return messageSenderType;
	}

	public void setMessageSenderType(Integer messageSenderType) {
		this.messageSenderType = messageSenderType;
	}

	public Integer getMessageImeiType() {
		return messageImeiType;
	}

	public void setMessageImeiType(Integer messageImeiType) {
		this.messageImeiType = messageImeiType;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Byte getStatus() {
		return status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

	public Byte getType() {
		return type;
	}

	public void setType(Byte type) {
		this.type = type;
	}

	public Byte getClassifyType() {
		return classifyType;
	}

	public void setClassifyType(Byte classifyType) {
		this.classifyType = classifyType;
	}

	public Byte getClassifySubType() {
		return classifySubType;
	}

	public void setClassifySubType(Byte classifySubType) {
		this.classifySubType = classifySubType;
	}

	public Byte getIsForceRead() {
		return isForceRead;
	}

	public void setIsForceRead(Byte isForceRead) {
		this.isForceRead = isForceRead;
	}

	public Byte getIsTimeLimit() {
		return isTimeLimit;
	}

	public void setIsTimeLimit(Byte isTimeLimit) {
		this.isTimeLimit = isTimeLimit;
	}

	public Date getTmBegin() {
		return tmBegin;
	}

	public void setTmBegin(Date tmBegin) {
		this.tmBegin = tmBegin;
	}

	public Date getTmEnd() {
		return tmEnd;
	}

	public void setTmEnd(Date tmEnd) {
		this.tmEnd = tmEnd;
	}

	public Integer getOperId() {
		return operId;
	}

	public void setOperId(Integer operId) {
		this.operId = operId;
	}

	public String getOper() {
		return oper;
	}

	public void setOper(String oper) {
		this.oper = oper;
	}

	public Byte getPublishType() {
		return publishType;
	}

	public void setPublishType(Byte publishType) {
		this.publishType = publishType;
	}

	public Date getPredictTm() {
		return predictTm;
	}

	public void setPredictTm(Date predictTm) {
		this.predictTm = predictTm;
	}

	public Byte getPushMethod() {
		return pushMethod;
	}

	public void setPushMethod(Byte pushMethod) {
		this.pushMethod = pushMethod;
	}

	public String getPushMsg() {
		return pushMsg;
	}

	public void setPushMsg(String pushMsg) {
		this.pushMsg = pushMsg;
	}

	public Byte getPriority() {
		return priority;
	}

	public void setPriority(Byte priority) {
		this.priority = priority;
	}

	public Date getInsTm() {
		return insTm;
	}

	public void setInsTm(Date insTm) {
		this.insTm = insTm;
	}

	public Date getUpdTm() {
		return updTm;
	}

	public void setUpdTm(Date updTm) {
		this.updTm = updTm;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

   
}