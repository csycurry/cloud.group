package com.csy.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Commodity implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.id
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.commodity_id
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Integer commodityId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.commodity_name
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private String commodityName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.commodity_pic
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private String commodityPic;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.commodity_detail
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private String commodityDetail;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.commodity_tbk
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private String commodityTbk;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.commodity_category
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private String commodityCategory;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.commodity_price
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private BigDecimal commodityPrice;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.commodity_sales
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Integer commoditySales;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.commodity_rate
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Integer commodityRate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.seller_id
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Integer sellerId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.seller_name
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private String sellerName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.shop_name
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private String shopName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.shop_type
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Byte shopType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.coupon_id
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private String couponId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.coupon_num
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Integer couponNum;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.coupon_residue
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Integer couponResidue;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.coupon_detail
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private String couponDetail;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.coupon_start
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Date couponStart;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.coupon_end
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Date couponEnd;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.coupon_link
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private String couponLink;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.commodity_type
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Byte commodityType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.commodity_status
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Byte commodityStatus;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.create_tm
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Date createTm;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.creator
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private String creator;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.modify_tm
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private Date modifyTm;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column commodity.modifior
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private String modifior;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table commodity
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.id
     *
     * @return the value of commodity.id
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.id
     *
     * @param id the value for commodity.id
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.commodity_id
     *
     * @return the value of commodity.commodity_id
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Integer getCommodityId() {
        return commodityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.commodity_id
     *
     * @param commodityId the value for commodity.commodity_id
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCommodityId(Integer commodityId) {
        this.commodityId = commodityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.commodity_name
     *
     * @return the value of commodity.commodity_name
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public String getCommodityName() {
        return commodityName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.commodity_name
     *
     * @param commodityName the value for commodity.commodity_name
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName == null ? null : commodityName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.commodity_pic
     *
     * @return the value of commodity.commodity_pic
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public String getCommodityPic() {
        return commodityPic;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.commodity_pic
     *
     * @param commodityPic the value for commodity.commodity_pic
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCommodityPic(String commodityPic) {
        this.commodityPic = commodityPic == null ? null : commodityPic.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.commodity_detail
     *
     * @return the value of commodity.commodity_detail
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public String getCommodityDetail() {
        return commodityDetail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.commodity_detail
     *
     * @param commodityDetail the value for commodity.commodity_detail
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCommodityDetail(String commodityDetail) {
        this.commodityDetail = commodityDetail == null ? null : commodityDetail.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.commodity_tbk
     *
     * @return the value of commodity.commodity_tbk
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public String getCommodityTbk() {
        return commodityTbk;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.commodity_tbk
     *
     * @param commodityTbk the value for commodity.commodity_tbk
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCommodityTbk(String commodityTbk) {
        this.commodityTbk = commodityTbk == null ? null : commodityTbk.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.commodity_category
     *
     * @return the value of commodity.commodity_category
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public String getCommodityCategory() {
        return commodityCategory;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.commodity_category
     *
     * @param commodityCategory the value for commodity.commodity_category
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCommodityCategory(String commodityCategory) {
        this.commodityCategory = commodityCategory == null ? null : commodityCategory.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.commodity_price
     *
     * @return the value of commodity.commodity_price
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public BigDecimal getCommodityPrice() {
        return commodityPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.commodity_price
     *
     * @param commodityPrice the value for commodity.commodity_price
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCommodityPrice(BigDecimal commodityPrice) {
        this.commodityPrice = commodityPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.commodity_sales
     *
     * @return the value of commodity.commodity_sales
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Integer getCommoditySales() {
        return commoditySales;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.commodity_sales
     *
     * @param commoditySales the value for commodity.commodity_sales
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCommoditySales(Integer commoditySales) {
        this.commoditySales = commoditySales;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.commodity_rate
     *
     * @return the value of commodity.commodity_rate
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Integer getCommodityRate() {
        return commodityRate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.commodity_rate
     *
     * @param commodityRate the value for commodity.commodity_rate
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCommodityRate(Integer commodityRate) {
        this.commodityRate = commodityRate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.seller_id
     *
     * @return the value of commodity.seller_id
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Integer getSellerId() {
        return sellerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.seller_id
     *
     * @param sellerId the value for commodity.seller_id
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setSellerId(Integer sellerId) {
        this.sellerId = sellerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.seller_name
     *
     * @return the value of commodity.seller_name
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public String getSellerName() {
        return sellerName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.seller_name
     *
     * @param sellerName the value for commodity.seller_name
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setSellerName(String sellerName) {
        this.sellerName = sellerName == null ? null : sellerName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.shop_name
     *
     * @return the value of commodity.shop_name
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public String getShopName() {
        return shopName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.shop_name
     *
     * @param shopName the value for commodity.shop_name
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setShopName(String shopName) {
        this.shopName = shopName == null ? null : shopName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.shop_type
     *
     * @return the value of commodity.shop_type
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Byte getShopType() {
        return shopType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.shop_type
     *
     * @param shopType the value for commodity.shop_type
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setShopType(Byte shopType) {
        this.shopType = shopType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.coupon_id
     *
     * @return the value of commodity.coupon_id
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public String getCouponId() {
        return couponId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.coupon_id
     *
     * @param couponId the value for commodity.coupon_id
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCouponId(String couponId) {
        this.couponId = couponId == null ? null : couponId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.coupon_num
     *
     * @return the value of commodity.coupon_num
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Integer getCouponNum() {
        return couponNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.coupon_num
     *
     * @param couponNum the value for commodity.coupon_num
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCouponNum(Integer couponNum) {
        this.couponNum = couponNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.coupon_residue
     *
     * @return the value of commodity.coupon_residue
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Integer getCouponResidue() {
        return couponResidue;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.coupon_residue
     *
     * @param couponResidue the value for commodity.coupon_residue
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCouponResidue(Integer couponResidue) {
        this.couponResidue = couponResidue;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.coupon_detail
     *
     * @return the value of commodity.coupon_detail
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public String getCouponDetail() {
        return couponDetail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.coupon_detail
     *
     * @param couponDetail the value for commodity.coupon_detail
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCouponDetail(String couponDetail) {
        this.couponDetail = couponDetail == null ? null : couponDetail.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.coupon_start
     *
     * @return the value of commodity.coupon_start
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Date getCouponStart() {
        return couponStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.coupon_start
     *
     * @param couponStart the value for commodity.coupon_start
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCouponStart(Date couponStart) {
        this.couponStart = couponStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.coupon_end
     *
     * @return the value of commodity.coupon_end
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Date getCouponEnd() {
        return couponEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.coupon_end
     *
     * @param couponEnd the value for commodity.coupon_end
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCouponEnd(Date couponEnd) {
        this.couponEnd = couponEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.coupon_link
     *
     * @return the value of commodity.coupon_link
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public String getCouponLink() {
        return couponLink;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.coupon_link
     *
     * @param couponLink the value for commodity.coupon_link
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCouponLink(String couponLink) {
        this.couponLink = couponLink == null ? null : couponLink.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.commodity_type
     *
     * @return the value of commodity.commodity_type
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Byte getCommodityType() {
        return commodityType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.commodity_type
     *
     * @param commodityType the value for commodity.commodity_type
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCommodityType(Byte commodityType) {
        this.commodityType = commodityType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.commodity_status
     *
     * @return the value of commodity.commodity_status
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Byte getCommodityStatus() {
        return commodityStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.commodity_status
     *
     * @param commodityStatus the value for commodity.commodity_status
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCommodityStatus(Byte commodityStatus) {
        this.commodityStatus = commodityStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.create_tm
     *
     * @return the value of commodity.create_tm
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Date getCreateTm() {
        return createTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.create_tm
     *
     * @param createTm the value for commodity.create_tm
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCreateTm(Date createTm) {
        this.createTm = createTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.creator
     *
     * @return the value of commodity.creator
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public String getCreator() {
        return creator;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.creator
     *
     * @param creator the value for commodity.creator
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setCreator(String creator) {
        this.creator = creator == null ? null : creator.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.modify_tm
     *
     * @return the value of commodity.modify_tm
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public Date getModifyTm() {
        return modifyTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.modify_tm
     *
     * @param modifyTm the value for commodity.modify_tm
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setModifyTm(Date modifyTm) {
        this.modifyTm = modifyTm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column commodity.modifior
     *
     * @return the value of commodity.modifior
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public String getModifior() {
        return modifior;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column commodity.modifior
     *
     * @param modifior the value for commodity.modifior
     *
     * @mbg.generated Sun Feb 05 23:54:05 CST 2017
     */
    public void setModifior(String modifior) {
        this.modifior = modifior == null ? null : modifior.trim();
    }
}