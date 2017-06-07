package com.csy.message.domain.dto;

import java.io.Serializable;
import java.util.Date;

public class NotifyReceiverDTO implements Serializable {
    private Integer id;

    private Byte mtype;

    private Integer notifyId;

    private Integer targetType;

    private Integer targetId;

    private String targetName;

    private Integer cityId;

    private Byte isDelete;

    private Byte status;
    
    private String statusCn;

    private Byte isTimeLimit;

    private Date tmBegin;

    private Date tmEnd;

    private Integer messageImeiType;

    private Byte isForceRead;

    private Date sendTm;

    private Date delTm;

    private Date insTm;

    private Date updTm;

    private Integer shardx;
    
    private String content;

    private static final long serialVersionUID = 1L;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Byte getMtype() {
		return mtype;
	}

	public void setMtype(Byte mtype) {
		this.mtype = mtype;
	}

	public Integer getNotifyId() {
		return notifyId;
	}

	public void setNotifyId(Integer notifyId) {
		this.notifyId = notifyId;
	}

	public Integer getTargetType() {
		return targetType;
	}

	public void setTargetType(Integer targetType) {
		this.targetType = targetType;
	}

	public Integer getTargetId() {
		return targetId;
	}

	public void setTargetId(Integer targetId) {
		this.targetId = targetId;
	}

	public String getTargetName() {
		return targetName;
	}

	public void setTargetName(String targetName) {
		this.targetName = targetName;
	}

	public Integer getCityId() {
		return cityId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	public Byte getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Byte isDelete) {
		this.isDelete = isDelete;
	}

	public Byte getStatus() {
		return status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

	public String getStatusCn() {
		return statusCn;
	}

	public void setStatusCn(String statusCn) {
		this.statusCn = statusCn;
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

	public Integer getMessageImeiType() {
		return messageImeiType;
	}

	public void setMessageImeiType(Integer messageImeiType) {
		this.messageImeiType = messageImeiType;
	}

	public Byte getIsForceRead() {
		return isForceRead;
	}

	public void setIsForceRead(Byte isForceRead) {
		this.isForceRead = isForceRead;
	}

	public Date getSendTm() {
		return sendTm;
	}

	public void setSendTm(Date sendTm) {
		this.sendTm = sendTm;
	}

	public Date getDelTm() {
		return delTm;
	}

	public void setDelTm(Date delTm) {
		this.delTm = delTm;
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

	public Integer getShardx() {
		return shardx;
	}

	public void setShardx(Integer shardx) {
		this.shardx = shardx;
	}
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

    
}