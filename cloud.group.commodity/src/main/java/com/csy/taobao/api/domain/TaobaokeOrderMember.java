package com.csy.taobao.api.domain;

import java.util.Date;
import com.taobao.api.TaobaoObject;
import com.taobao.api.internal.mapping.ApiField;

public class TaobaokeOrderMember extends TaobaoObject{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1034038794895268299L;
	
	/**
	 * 淘宝父订单号
	 */
	@ApiField("trade_parent_id")
	private Long tradeParentId;

	/**
	 * 淘宝订单号
	 */
	@ApiField("trade_id")
	private Long tradeId;

	/**
	 * 商品ID
	 */
	@ApiField("num_iid")
	private Long numIid;

	/**
	 * 商品标题
	 */
	@ApiField("item_title")
	private String itemTitle;

	/**
	 * 商品数量
	 */
	@ApiField("item_num")
	private Integer itemNum;

	/**
	 * 单价
	 */
	@ApiField("price")
	private String price;

	/**
	 * 实际支付金额
	 */
	@ApiField("pay_price")
	private String payPrice;

	/**
	 * 卖家昵称
	 */
	@ApiField("seller_nick")
	private String sellerNick;

	/**
	 * 卖家店铺名称
	 */
	@ApiField("seller_shop_title")
	private Long sellerShopTitle;

	/**
	 * 推广者获得的收入金额，对应联盟后台报表“预估收入”
	 */
	@ApiField("commission")
	private String commission;

	/**
	 * 推广者获得的分成比率，对应联盟后台报表“分成比率”
	 */
	@ApiField("commission_rate")
	private String commissionRate;

	/**
	 * 推广者unid
	 */
	@ApiField("unid")
	private String unid;

	/**
	 * 淘客订单创建时间
	 */
	@ApiField("create_time")
	private Date createime;

	/**
	 * 淘客订单结算时间
	 */
	@ApiField("earning_time")
	private Date earningTime;

	/**
	 * 淘客订单状态，3：订单结算，12：订单付款， 13：订单失效，14：订单成功
	 */
	@ApiField("tk_status")
	private Byte tkStatus;

	/**
	 * 第三方服务来源，没有第三方服务，取值为“--”
	 */
	@ApiField("tk3rd_type")
	private String tk3rdType;
   
	/**
	 * 第三方推广者ID
	 */
	@ApiField("tk3rd_pub_id")
	private String tk3rdPubId;
	
	/**
	 * 订单类型，如天猫，淘宝
	 */
	@ApiField("order_type")
	private String orderType;
	
	/**
	 * 收入比率，卖家设置佣金比率+平台补贴比率
	 */
	@ApiField("income_rate")
	private String incomeRate;
	
	/**
	 * 效果预估，付款金额*(佣金比率+补贴比率)*分成比率
	 */
	@ApiField("pub_share_pre_fee")
	private String pubSharePreFee;
	
	/**
	 * 补贴比率
	 */
	@ApiField("subsidy_rate")
	private String subsidyRate;
	
	/**
	 * 补贴类型，天猫:1，聚划算:2，航旅:3，阿里云:4
	 */
	@ApiField("subsidy_type")
	private String subsidyType;

	/**
	 * 成交平台，PC:1，无线:2
	 */
	@ApiField("terminal_type")
	private String terminalType;
	
	/**
	 * 类目名称
	 */
	@ApiField("auction_category")
	private String auctionCategory;
	
	/**
	 * 来源媒体ID
	 */
	@ApiField("site_id")
	private String siteId;
	
	/**
	 * 来源媒体名称
	 */
	@ApiField("site_name")
	private String siteName;
	
	/**
	 * 广告位ID
	 */
	@ApiField("adzone_id")
	private String adzoneId;
	
	/**
	 * 广告位名称
	 */
	@ApiField("adzone_name")
	private String adzoneName;
	
	/**
	 * 付款金额
	 */
	@ApiField("alipay_total_price")
	private String alipayTotalPrice;
	
	/**
	 * 佣金比率
	 */
	@ApiField("total_commission_rate")
	private String totalCommissionRate;
	
	
	/**
	 * 佣金金额
	 */
	@ApiField("total_commission_fee")
	private String total_commission_fee;
	
	/**
	 * 补贴金额
	 */
	@ApiField("subsidy_fee")
	private String subsidyFee;

	public Long getTradeParentId() {
		return tradeParentId;
	}

	public void setTradeParentId(Long tradeParentId) {
		this.tradeParentId = tradeParentId;
	}

	public Long getTradeId() {
		return tradeId;
	}

	public void setTradeId(Long tradeId) {
		this.tradeId = tradeId;
	}

	public Long getNumIid() {
		return numIid;
	}

	public void setNumIid(Long numIid) {
		this.numIid = numIid;
	}

	public String getItemTitle() {
		return itemTitle;
	}

	public void setItemTitle(String itemTitle) {
		this.itemTitle = itemTitle;
	}

	public Integer getItemNum() {
		return itemNum;
	}

	public void setItemNum(Integer itemNum) {
		this.itemNum = itemNum;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(String payPrice) {
		this.payPrice = payPrice;
	}

	public String getSellerNick() {
		return sellerNick;
	}

	public void setSellerNick(String sellerNick) {
		this.sellerNick = sellerNick;
	}

	public Long getSellerShopTitle() {
		return sellerShopTitle;
	}

	public void setSellerShopTitle(Long sellerShopTitle) {
		this.sellerShopTitle = sellerShopTitle;
	}

	public String getCommission() {
		return commission;
	}

	public void setCommission(String commission) {
		this.commission = commission;
	}

	public String getCommissionRate() {
		return commissionRate;
	}

	public void setCommissionRate(String commissionRate) {
		this.commissionRate = commissionRate;
	}

	public String getUnid() {
		return unid;
	}

	public void setUnid(String unid) {
		this.unid = unid;
	}

	public Date getCreateime() {
		return createime;
	}

	public void setCreateime(Date createime) {
		this.createime = createime;
	}

	public Date getEarningTime() {
		return earningTime;
	}

	public void setEarningTime(Date earningTime) {
		this.earningTime = earningTime;
	}

	public Byte getTkStatus() {
		return tkStatus;
	}

	public void setTkStatus(Byte tkStatus) {
		this.tkStatus = tkStatus;
	}

	public String getTk3rdType() {
		return tk3rdType;
	}

	public void setTk3rdType(String tk3rdType) {
		this.tk3rdType = tk3rdType;
	}

	public String getTk3rdPubId() {
		return tk3rdPubId;
	}

	public void setTk3rdPubId(String tk3rdPubId) {
		this.tk3rdPubId = tk3rdPubId;
	}

	public String getOrderType() {
		return orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	public String getIncomeRate() {
		return incomeRate;
	}

	public void setIncomeRate(String incomeRate) {
		this.incomeRate = incomeRate;
	}

	public String getPubSharePreFee() {
		return pubSharePreFee;
	}

	public void setPubSharePreFee(String pubSharePreFee) {
		this.pubSharePreFee = pubSharePreFee;
	}

	public String getSubsidyRate() {
		return subsidyRate;
	}

	public void setSubsidyRate(String subsidyRate) {
		this.subsidyRate = subsidyRate;
	}

	public String getSubsidyType() {
		return subsidyType;
	}

	public void setSubsidyType(String subsidyType) {
		this.subsidyType = subsidyType;
	}

	public String getTerminalType() {
		return terminalType;
	}

	public void setTerminalType(String terminalType) {
		this.terminalType = terminalType;
	}

	public String getAuctionCategory() {
		return auctionCategory;
	}

	public void setAuctionCategory(String auctionCategory) {
		this.auctionCategory = auctionCategory;
	}

	public String getSiteId() {
		return siteId;
	}

	public void setSiteId(String siteId) {
		this.siteId = siteId;
	}

	public String getSiteName() {
		return siteName;
	}

	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}

	public String getAdzoneId() {
		return adzoneId;
	}

	public void setAdzoneId(String adzoneId) {
		this.adzoneId = adzoneId;
	}

	public String getAdzoneName() {
		return adzoneName;
	}

	public void setAdzoneName(String adzoneName) {
		this.adzoneName = adzoneName;
	}

	public String getAlipayTotalPrice() {
		return alipayTotalPrice;
	}

	public void setAlipayTotalPrice(String alipayTotalPrice) {
		this.alipayTotalPrice = alipayTotalPrice;
	}

	public String getTotalCommissionRate() {
		return totalCommissionRate;
	}

	public void setTotalCommissionRate(String totalCommissionRate) {
		this.totalCommissionRate = totalCommissionRate;
	}

	public String getTotal_commission_fee() {
		return total_commission_fee;
	}

	public void setTotal_commission_fee(String total_commission_fee) {
		this.total_commission_fee = total_commission_fee;
	}

	public String getSubsidyFee() {
		return subsidyFee;
	}

	public void setSubsidyFee(String subsidyFee) {
		this.subsidyFee = subsidyFee;
	}
}
