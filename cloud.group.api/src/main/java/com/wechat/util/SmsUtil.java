package com.wechat.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.codec.digest.DigestUtils;

import com.alibaba.fastjson.JSONObject;

public class SmsUtil {
	
	/**
	 * 发送短信
	 * @param params 短信发送请求参数，请求头部 Content-Type:application/json
	 * @return 短信请求结果
	 */
	public static String sendSms(String params)
	{
		return HttpKit.postJson(ConfKit.get("sms.server.url"), params);
	}
	/**
	 * 短信发送请求参数生成
	 * @param params 短信模板入参
	 * @return
	 */
	public static String initParams(JSONObject params)
	{
		JSONObject object = new JSONObject();
		SimpleDateFormat format = new SimpleDateFormat("YYYYMMDDHHmmss");
		StringBuilder signature = new StringBuilder();
		String serialno =	String.valueOf(System.currentTimeMillis());
		object.put("serialno", serialno);
		object.put("ea", "md5");
		object.put("params", params);
		signature.append(serialno).append(",").append("md5,").append(params.toJSONString()).append(ConfKit.get("secret"));
		object.put("signature", DigestUtils.md5Hex(signature.toString()).toUpperCase());
		return object.toJSONString();
	}
	
	public static void main(String[] args) {
		JSONObject object = new JSONObject();
		JSONObject smsTplParams = new JSONObject();
		smsTplParams.put("company", "云联通行证");
		smsTplParams.put("minute", "5");
		smsTplParams.put("code", "567437");
		smsTplParams.put("appname", "聚店");
		object.put("appUserId", ConfKit.get("appUserId"));
		object.put("smsTarget", "15157132516");
		object.put("smsTplId", "1");
		object.put("smsTplParams", smsTplParams);
		System.out.println(sendSms(initParams(object)));
	}
}
