/**
 * 微信公众平台发模(JAVA) SDK
 * (c) 2012-2013 ____′↘夏悸 <wmails@126.cn>, MIT Licensed
 * http://www.jeasyuicn.com/wechat
 */
package com.xinyunlian.cloud.wx.model.bean;

import java.io.Serializable;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * 发的图片信息
 * @author L.cm
 * email: 596392912@qq.com
 * site:  http://www.dreamlu.net
 * @date 20141019 下午5:05:58
 */
public class SendPicsInfo implements Serializable {

	private int Count;
	private PicList PicList;
	
	public int getCount() {
		return Count;
	}

	public void setCount(int count) {
		Count = count;
	}

	public PicList getPicList() {
		return PicList;
	}

	public void setPicList(PicList picList) {
		PicList = picList;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
	}
}
