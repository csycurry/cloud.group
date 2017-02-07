package com.csy.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.csy.base.controller.BaseController;
import com.csy.util.GeetestConfig;
import com.csy.util.GeetestLib;
import com.csy.util.ResponseObject;

@Controller
public class GTestController extends BaseController{

	@RequestMapping(value="/geetest/register")
	@ResponseObject
	public @ResponseBody JSONObject getChallenge()
	{
		GeetestLib gtSdk = new GeetestLib(GeetestConfig.getGeetest_id(), GeetestConfig.getGeetest_key());

		String resStr = "{}";
		
		//自定义userid
		String userid = "test";

		//进行验证预处理
		int gtServerStatus = gtSdk.preProcess(userid);
		
		//将服务器状态设置到session中
		getSession().setAttribute(gtSdk.gtServerStatusSessionKey, gtServerStatus);
		//将userid设置到session中
		getSession().setAttribute("userid", userid);
		
		resStr = gtSdk.getResponseStr();
		return JSONObject.parseObject(resStr);
	}
}
