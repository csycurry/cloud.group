package com.csy.commodity.dto;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class CommodityDTO implements Serializable {
    private Integer id;

    private Integer commodityId;

    private String commodityName;

    private String commodityPic;

    private String commodityDetail;

    private String commodityTbk;

    private String commodityCategory;

    private String commodityCategoryMean;
    
    private BigDecimal commodityPrice;

    private Integer commoditySales;

    private Integer commodityRate;

    private Integer sellerId;

    private String sellerName;

    private String shopName;

    private Byte shopType;

    private String shopTypeMean;
    
    private String couponId;

    private Integer couponNum;

    private Integer couponResidue;

    private String couponDetail;

    private Date couponStart;

    private Date couponEnd;
    
    private String couponStartDate;

    private String couponEndDate;

    private String couponLink;

    private Byte commodityType;
    
    private String commodityTypeMean;

    private Byte commodityStatus;

    private Date createTm;

    private String creator;

    private Date modifyTm;

    private String modifior;
    
    private BigDecimal couponPay;

    private static final long serialVersionUID = 1L;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCommodityId() {
		return commodityId;
	}

	public void setCommodityId(Integer commodityId) {
		this.commodityId = commodityId;
	}

	public String getCommodityName() {
		return commodityName;
	}

	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}

	public String getCommodityPic() {
		return commodityPic;
	}

	public void setCommodityPic(String commodityPic) {
		this.commodityPic = commodityPic;
	}

	public String getCommodityDetail() {
		return commodityDetail;
	}

	public void setCommodityDetail(String commodityDetail) {
		this.commodityDetail = commodityDetail;
	}

	public String getCommodityTbk() {
		return commodityTbk;
	}

	public void setCommodityTbk(String commodityTbk) {
		this.commodityTbk = commodityTbk;
	}

	public String getCommodityCategory() {
		return commodityCategory;
	}

	public void setCommodityCategory(String commodityCategory) {
		this.commodityCategory = commodityCategory;
	}

	public String getCommodityCategoryMean() {
		return commodityCategoryMean;
	}

	public void setCommodityCategoryMean(String commodityCategoryMean) {
		this.commodityCategoryMean = commodityCategoryMean;
	}

	public BigDecimal getCommodityPrice() {
		return commodityPrice;
	}

	public void setCommodityPrice(BigDecimal commodityPrice) {
		this.commodityPrice = commodityPrice;
	}

	public Integer getCommoditySales() {
		return commoditySales;
	}

	public void setCommoditySales(Integer commoditySales) {
		this.commoditySales = commoditySales;
	}

	public Integer getCommodityRate() {
		return commodityRate;
	}

	public void setCommodityRate(Integer commodityRate) {
		this.commodityRate = commodityRate;
	}

	public Integer getSellerId() {
		return sellerId;
	}

	public void setSellerId(Integer sellerId) {
		this.sellerId = sellerId;
	}

	public String getSellerName() {
		return sellerName;
	}

	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public Byte getShopType() {
		return shopType;
	}

	public void setShopType(Byte shopType) {
		this.shopType = shopType;
	}

	public String getCouponId() {
		return couponId;
	}

	public void setCouponId(String couponId) {
		this.couponId = couponId;
	}

	public Integer getCouponNum() {
		return couponNum;
	}

	public void setCouponNum(Integer couponNum) {
		this.couponNum = couponNum;
	}

	public Integer getCouponResidue() {
		return couponResidue;
	}

	public void setCouponResidue(Integer couponResidue) {
		this.couponResidue = couponResidue;
	}

	public String getCouponDetail() {
		return couponDetail;
	}

	public void setCouponDetail(String couponDetail) {
		this.couponDetail = couponDetail;
	}

	public Date getCouponStart() {
		return couponStart;
	}

	public void setCouponStart(Date couponStart) {
		this.couponStart = couponStart;
	}

	public Date getCouponEnd() {
		return couponEnd;
	}

	public void setCouponEnd(Date couponEnd) {
		this.couponEnd = couponEnd;
	}

	public String getCouponLink() {
		return couponLink;
	}

	public void setCouponLink(String couponLink) {
		this.couponLink = couponLink;
	}

	public Byte getCommodityType() {
		return commodityType;
	}

	public void setCommodityType(Byte commodityType) {
		this.commodityType = commodityType;
	}

	public Byte getCommodityStatus() {
		return commodityStatus;
	}

	public void setCommodityStatus(Byte commodityStatus) {
		this.commodityStatus = commodityStatus;
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

	public String getShopTypeMean() {
		return shopTypeMean;
	}

	public void setShopTypeMean(String shopTypeMean) {
		this.shopTypeMean = shopTypeMean;
	}

	public String getCommodityTypeMean() {
		return commodityTypeMean;
	}

	public void setCommodityTypeMean(String commodityTypeMean) {
		this.commodityTypeMean = commodityTypeMean;
	}

	public String getCouponStartDate() {
		return couponStartDate;
	}

	public void setCouponStartDate(String couponStartDate) {
		this.couponStartDate = couponStartDate;
	}

	public String getCouponEndDate() {
		return couponEndDate;
	}

	public void setCouponEndDate(String couponEndDate) {
		this.couponEndDate = couponEndDate;
	}

	public BigDecimal getCouponPay() {
		return couponPay;
	}

	public void setCouponPay(BigDecimal couponPay) {
		this.couponPay = couponPay;
	}

}