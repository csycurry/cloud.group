package com.csy.taobao.api.domain;

import com.taobao.api.TaobaoResponse;
import com.taobao.api.internal.mapping.ApiField;

public class TaobaokeOrderGetResponse extends TaobaoResponse{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8544947017243428607L;

	/** 
	 * 淘宝客订单
	 */
	@ApiField("tbk_order_get_response")
	private TaobaokeOrder taobaokeOrder;

	public TaobaokeOrder getTaobaokeOrder() {
		return taobaokeOrder;
	}

	public void setTaobaokeOrder(TaobaokeOrder taobaokeOrder) {
		this.taobaokeOrder = taobaokeOrder;
	}

}
