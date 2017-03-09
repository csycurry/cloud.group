package com.csy.taobao.api.domain;

import java.util.List;

import com.taobao.api.TaobaoObject;
import com.taobao.api.domain.TaobaokeReportMember;
import com.taobao.api.internal.mapping.ApiField;
import com.taobao.api.internal.mapping.ApiListField;

public class TaobaokeOrder extends TaobaoObject{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5145990867480783658L;
	/**
	 * 淘宝客订单成员列表
	 */
	@ApiListField("results")
	@ApiField("n_tbk_order")
	private List<TaobaokeOrderMember> taobaokeOrderMembers;


	public List<TaobaokeOrderMember> getTaobaokeOrderMembers() {
		return taobaokeOrderMembers;
	}
	public void setTaobaokeOrderMembers(List<TaobaokeOrderMember> taobaokeOrderMembers) {
		this.taobaokeOrderMembers = taobaokeOrderMembers;
	}
}
