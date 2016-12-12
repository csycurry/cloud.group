/**
 * http://www.jeasyuicn.com/wechat
 */
package com.xinyunlian.cloud.wx.model.bean;

/* 消息类型
 * @author L.cm
 * email: 596392912@qq.com
 * site:  http://www.dreamlu.net
 *
 */
public enum MsgTypes {
	TEXT(), 
	LOCATION(), 
	IMAGE(),
	LINK(),
	VOICE(),
	EVENT(),
	VIDEO(),
	NEWS(),
	MUSIC(),
	VERIFY();
	
	public String getType() {
		return this.name().toLowerCase();
	}
}
