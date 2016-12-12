package com.csy.mission.domain.dto;

import java.io.Serializable;
import java.util.Date;

public class MissionDTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;

    private String missionTitle;

    private Short price;

    private Short realPrice;

    private Short priceVip;

    private Byte type;
    
    private String typeCN;

    private Date beginTm;

    private Date endTm;

    private String beginDate;

    private String endDate;
    
    private Date createTm;

    private String creator;

    private Date modifyTm;
    
    private String modifyDate;

    private String modifior;

    private Integer settlementInterval;

    private String imageUrl;
    //软件下载地址
    private String thumbnailUrl;

    private Integer starLevel;

    private Boolean ipChange;
    
    private String ipChangeCn;
    
    public String getIpChangeCn() {
		return ipChangeCn;
	}

	public void setIpChangeCn(String ipChangeCn) {
		this.ipChangeCn = ipChangeCn;
	}

	private Byte codeType;
    
    private String codeTypeCn;

    private Integer signNum;
    
	public Byte getCodeType() {
		return codeType;
	}

	public void setCodeType(Byte codeType) {
		this.codeType = codeType;
	}

	public String getCodeTypeCn() {
		return codeTypeCn;
	}

	public void setCodeTypeCn(String codeTypeCn) {
		this.codeTypeCn = codeTypeCn;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getMissionTitle() {
		return missionTitle;
	}

	public void setMissionTitle(String missionTitle) {
		this.missionTitle = missionTitle;
	}

	public Short getPrice() {
		return price;
	}

	public void setPrice(Short price) {
		this.price = price;
	}

	public Short getRealPrice() {
		return realPrice;
	}

	public void setRealPrice(Short realPrice) {
		this.realPrice = realPrice;
	}

	public Short getPriceVip() {
		return priceVip;
	}

	public void setPriceVip(Short priceVip) {
		this.priceVip = priceVip;
	}

	public Byte getType() {
		return type;
	}

	public void setType(Byte type) {
		this.type = type;
	}

	public String getTypeCN() {
		return typeCN;
	}

	public void setTypeCN(String typeCN) {
		this.typeCN = typeCN;
	}

	public Date getBeginTm() {
		return beginTm;
	}

	public void setBeginTm(Date beginTm) {
		this.beginTm = beginTm;
	}

	public Date getEndTm() {
		return endTm;
	}

	public void setEndTm(Date endTm) {
		this.endTm = endTm;
	}

	public Date getCreateTm() {
		return createTm;
	}

	public void setCreateTm(Date createTm) {
		this.createTm = createTm;
	}

	public String getBeginDate() {
		return beginDate;
	}

	public void setBeginDate(String beginDate) {
		this.beginDate = beginDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
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

	public Integer getSettlementInterval() {
		return settlementInterval;
	}

	public void setSettlementInterval(Integer settlementInterval) {
		this.settlementInterval = settlementInterval;
	}

	public String getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getThumbnailUrl() {
		return thumbnailUrl;
	}

	public void setThumbnailUrl(String thumbnailUrl) {
		this.thumbnailUrl = thumbnailUrl;
	}

	public Integer getStarLevel() {
		return starLevel;
	}

	public void setStarLevel(Integer starLevel) {
		this.starLevel = starLevel;
	}

	public Boolean getIpChange() {
		return ipChange;
	}

	public void setIpChange(Boolean ipChange) {
		this.ipChange = ipChange;
	}

	public Integer getSignNum() {
		return signNum;
	}

	public void setSignNum(Integer signNum) {
		this.signNum = signNum;
	}

	
}
