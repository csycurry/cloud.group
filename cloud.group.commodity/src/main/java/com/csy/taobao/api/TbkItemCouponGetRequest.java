package com.csy.taobao.api;

import java.util.Date;
import java.util.Map;

import com.taobao.api.ApiRuleException;
import com.taobao.api.TaobaoRequest;

public class TbkItemCouponGetRequest implements TaobaoRequest<TbkItemCouponGetResponse>{
	/**
	 * 订单查询时间范围,单位:秒,最小60,最大600,默认60
	 */
	private Long platform;

	/** 
	* 需返回的字段列表.可选值:TaobaokeReportMember淘宝客报表成员结构体中的所有字段;字段之间用","分隔.
	 */
	private String pid;

	/** 
	* 第几页，默认1，1~100.
	 */
	private Long pageNo;

	/** 
	* 页大小，默认20，1~100
	 */
	private Long pageSize;
	/**
	 * 订单状态，1: 全部订单，3：订单结算，12：订单付款， 13：订单失效，14：订单成功； 订单查询类型为‘结算时间’时，只能查订单结算状态
	 */
	private String cat;
	/**
	 * 订单查询类型，创建时间“create_time”，或结算时间“settle_time”
	 */
	private String q;
	@Override
	public void check() throws ApiRuleException {
		// TODO Auto-generated method stub
		
	}
	@Override
	public String getApiMethodName() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int getBatchApiOrder() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public String getBatchApiSession() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Map<String, String> getHeaderMap() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getTargetAppKey() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Map<String, String> getTextParams() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Long getTimestamp() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void setBatchApiOrder(int arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void setBatchApiSession(String arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public Class<TbkItemCouponGetResponse> getResponseClass() {
		// TODO Auto-generated method stub
		return null;
	}
	public Long getPlatform() {
		return platform;
	}
	public void setPlatform(Long platform) {
		this.platform = platform;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public Long getPageNo() {
		return pageNo;
	}
	public void setPageNo(Long pageNo) {
		this.pageNo = pageNo;
	}
	public Long getPageSize() {
		return pageSize;
	}
	public void setPageSize(Long pageSize) {
		this.pageSize = pageSize;
	}
	public String getCat() {
		return cat;
	}
	public void setCat(String cat) {
		this.cat = cat;
	}
	public String getQ() {
		return q;
	}
	public void setQ(String q) {
		this.q = q;
	}
}
