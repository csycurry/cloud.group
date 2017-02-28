package com.csy.commodity.dto;

import java.io.Serializable;
import com.csy.common.domain.dto.BasePageDTO;

public class CommoditySearchDTO extends BasePageDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String commodityTitle;
	
	private Byte type;
	
	private Byte status;
	
	private String beginTm;
	
	private String endTm;
	

	public Byte getStatus() {
		return status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}


	public String getCommodityTitle() {
		return commodityTitle;
	}

	public void setCommodityTitle(String commodityTitle) {
		this.commodityTitle = commodityTitle;
	}

	public Byte getType() {
		return type;
	}

	public void setType(Byte type) {
		this.type = type;
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
	

}
