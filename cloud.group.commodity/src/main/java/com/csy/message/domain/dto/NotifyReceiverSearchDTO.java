package com.csy.message.domain.dto;

import java.io.Serializable;

import com.csy.common.domain.dto.BasePageDTO;

public class NotifyReceiverSearchDTO extends BasePageDTO implements Serializable {
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

    private Integer messageImeiType;

    private Byte isForceRead;

    private String beginTm;
	
	private String endTm;
	
	

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

	public String getBeginTm() {
		return beginTm;
	}

	public void setBeginTm(String beginTm) {
		this.beginTm = beginTm;
	}

	public String getEndTm() {
		return endTm;
	}

	public void setEndTm(String endTm) {
		this.endTm = endTm;
	}

	public String getStatusCn() {
		return statusCn;
	}

	public void setStatusCn(String statusCn) {
		this.statusCn = statusCn;
	}

	

    
}