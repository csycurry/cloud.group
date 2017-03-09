package com.csy.taobao.api;

import java.util.Date;
import java.util.Map;

import com.csy.taobao.api.domain.TaobaokeOrderGetResponse;
import com.taobao.api.ApiRuleException;
import com.taobao.api.TaobaoRequest;
import com.taobao.api.internal.util.RequestCheckUtils;
import com.taobao.api.internal.util.TaobaoHashMap;

public class TaobaokeOrderGetRequest implements TaobaoRequest<TaobaokeOrderGetResponse>{

	private TaobaoHashMap udfParams; // add user-defined text parameters
	private Long timestamp;

	/** 
	* 订单查询开始时间
	 */
	private Date startTime;
	/**
	 * 订单查询时间范围,单位:秒,最小60,最大600,默认60
	 */
	private Long span;

	/** 
	* 需返回的字段列表.可选值:TaobaokeReportMember淘宝客报表成员结构体中的所有字段;字段之间用","分隔.
	 */
	private String fields;

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
	private Long tkStatus;
	/**
	 * 订单查询类型，创建时间“create_time”，或结算时间“settle_time”
	 */
	private String orderQueryType;


	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Long getSpan() {
		return span;
	}
	public void setSpan(Long span) {
		this.span = span;
	}
	public void setFields(String fields) {
		this.fields = fields;
	}
	public String getFields() {
		return this.fields;
	}

	public void setPageNo(Long pageNo) {
		this.pageNo = pageNo;
	}
	public Long getPageNo() {
		return this.pageNo;
	}

	public void setPageSize(Long pageSize) {
		this.pageSize = pageSize;
	}
	public Long getPageSize() {
		return this.pageSize;
	}

	public Long getTimestamp() {
		return this.timestamp;
	}
	public void setTimestamp(Long timestamp) {
		this.timestamp = timestamp;
	}

	public Long getTkStatus() {
		return tkStatus;
	}
	public void setTkStatus(Long tkStatus) {
		this.tkStatus = tkStatus;
	}
	public String getOrderQueryType() {
		return orderQueryType;
	}
	public void setOrderQueryType(String orderQueryType) {
		this.orderQueryType = orderQueryType;
	}
	public String getApiMethodName() {
		return "taobao.tbk.order.get";
	}

	public Map<String, String> getTextParams() {		
		TaobaoHashMap txtParams = new TaobaoHashMap();
		txtParams.put("fields", this.fields);
		txtParams.put("start_time", this.startTime);
		txtParams.put("span", this.span);
		txtParams.put("page_no", this.pageNo);
		txtParams.put("page_size", this.pageSize);
		txtParams.put("tk_status", this.tkStatus);
		txtParams.put("order_query_type", this.orderQueryType);
		if(udfParams != null) {
			txtParams.putAll(this.udfParams);
		}
		return txtParams;
	}

	public void putOtherTextParam(String key, String value) {
		if(this.udfParams == null) {
			this.udfParams = new TaobaoHashMap();
		}
		this.udfParams.put(key, value);
	}

	public Class<TaobaokeOrderGetResponse> getResponseClass() {
		return TaobaokeOrderGetResponse.class;
	}
	
	public void check() throws ApiRuleException {
		
		RequestCheckUtils.checkNotEmpty(startTime,"date");
		RequestCheckUtils.checkNotEmpty(fields,"fields");
		RequestCheckUtils.checkMaxValue(pageNo,499L,"pageNo");
		RequestCheckUtils.checkMinValue(pageNo,1L,"pageNo");
		RequestCheckUtils.checkMaxValue(pageSize,100L,"pageSize");
	}


}
