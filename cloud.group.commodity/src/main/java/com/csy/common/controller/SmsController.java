package com.csy.common.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.csy.commodity.manager.SmsManager;
import com.csy.util.ResponseJson;

@Controller
public class SmsController {
	@Autowired
	private SmsManager smsManager;
	
	@RequestMapping(value="sms")
	@ResponseJson
	public @ResponseBody void sendSms(@RequestParam(value="mobile") String mobile) throws IOException
	{
		smsManager.sendSms(mobile);
	}
}
