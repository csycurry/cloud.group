package com.csy.rebate.domain.dto;

import java.io.Serializable;
import java.util.Date;

import com.csy.common.domain.dto.BasePageDTO;

public class RebateSearchDTO extends BasePageDTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

    private Integer userId;

    private String userCode;

    private String userName;

    private Integer missionId;

    private String missionName;

    private Integer amount;

    private Short earnings;

    private Byte status;

    private Date createTm;

    private String creator;

    private Date modifyTm;

    private String modifior;

    private Date settleTm;

    private String settleMan;
    private Byte type;
    private String typeCn;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getMissionId() {
		return missionId;
	}
	public void setMissionId(Integer missionId) {
		this.missionId = missionId;
	}
	public String getMissionName() {
		return missionName;
	}
	public void setMissionName(String missionName) {
		this.missionName = missionName;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Short getEarnings() {
		return earnings;
	}
	public void setEarnings(Short earnings) {
		this.earnings = earnings;
	}
	public Byte getStatus() {
		return status;
	}
	public void setStatus(Byte status) {
		this.status = status;
	}
	public Date getCreateTm() {
		return createTm;
	}
	public void setCreateTm(Date createTm) {
		this.createTm = createTm;
	}
	public String getCreator() {
		return creator;
	}
	public void setCreator(String creator) {
		this.creator = creator;
	}
	public Date getModifyTm() {
		return modifyTm;
	}
	public void setModifyTm(Date modifyTm) {
		this.modifyTm = modifyTm;
	}
	public String getModifior() {
		return modifior;
	}
	public void setModifior(String modifior) {
		this.modifior = modifior;
	}
	public Date getSettleTm() {
		return settleTm;
	}
	public void setSettleTm(Date settleTm) {
		this.settleTm = settleTm;
	}
	public String getSettleMan() {
		return settleMan;
	}
	public void setSettleMan(String settleMan) {
		this.settleMan = settleMan;
	}
	public Byte getType() {
		return type;
	}
	public void setType(Byte type) {
		this.type = type;
	}
	public String getTypeCn() {
		return typeCn;
	}
	public void setTypeCn(String typeCn) {
		this.typeCn = typeCn;
	}
	
    
}
