/**
 * 微信公众平台�?发模�?(JAVA) SDK
 * (c) 2012-2013 ____′↘夏悸 <wmails@126.cn>, MIT Licensed
 * http://www.jeasyuicn.com/wechat
 */
package com.xinyunlian.cloud.wx.model;

import java.io.Serializable;

public class OutMessage  implements Serializable{

	/**
	 * 接收方帐号，用户的OPEN_ID
	 */
	private String ToUserName;
	/**
	 */
	private String FromUserName;
	/**
	 * 消息的创建时间
	 */
	private Long CreateTime;
	/**
	 */
	private int FuncFlag = 0;

	public String getToUserName() {
		return ToUserName;
	}

	public String getFromUserName() {
		return FromUserName;
	}

	public Long getCreateTime() {
		return CreateTime;
	}

	public int getFuncFlag() {
		return FuncFlag;
	}

	public void setFuncFlag(int funcFlag) {
		FuncFlag = funcFlag;
	}

	public void setToUserName(String toUserName) {
		ToUserName = toUserName;
	}

	public void setFromUserName(String fromUserName) {
		FromUserName = fromUserName;
	}

	public void setCreateTime(Long createTime) {
		CreateTime = createTime;
	}
}