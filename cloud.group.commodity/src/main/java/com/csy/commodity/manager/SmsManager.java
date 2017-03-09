package com.csy.commodity.manager;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.config.domain.dto.SystemConfigDTO;
import com.csy.config.domain.emus.ConfigEn;
import com.csy.config.manager.SystemConfigManager;
import com.csy.dao.MobileCodeMapper;
import com.csy.message.domain.dto.NotifyReceiverDTO;
import com.csy.message.manager.MessageManager;
import com.csy.model.MobileCode;
import com.csy.model.MobileCodeExample;
import com.csy.model.base.Constant;
import com.csy.util.MessageUtil;

@Service
public class SmsManager {
	@Autowired
	private SystemConfigManager systemConfigManager;
	@Autowired
	private MobileCodeMapper mobileCodeMapper;
	@Autowired
	private MessageManager messageManager;
	
	public void sendSms(String mobile) throws IOException
	{
		SystemConfigDTO configDTO = systemConfigManager.detail(ConfigEn.sms.getCode());
		String code = initCode();
		MobileCode record = new MobileCode();
		record.setCode(code);
		record.setMoblic(mobile);
		record.setCreateTime(new Date());
		mobileCodeMapper.insert(record);
		NotifyReceiverDTO notifyReceiverDTO = new NotifyReceiverDTO();
		notifyReceiverDTO.setContent(String.format(Constant.SMS_TEMPLATE_CODE, code));
		notifyReceiverDTO.setTargetName(mobile);
		notifyReceiverDTO.setMtype((byte)0);
		notifyReceiverDTO.setTargetType(0);
		notifyReceiverDTO.setNotifyId(1);
		notifyReceiverDTO.setSendTm(new Date());
		messageManager.insertNodify(notifyReceiverDTO);
		MessageUtil.sendSms(configDTO.getConfigValue(), String.format(Constant.SMS_TEMPLATE_CODE, code), mobile);
	}
	
	public String getCode(String mobile)
	{
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.MINUTE, -10);
		MobileCodeExample example =new MobileCodeExample();
		example.createCriteria().andMoblicEqualTo(mobile).andCreateTimeGreaterThan(calendar.getTime());
		example.setOrderByClause("id desc");
		List<MobileCode> list = mobileCodeMapper.selectByExample(example);
		if(list!=null&&list.size()>0)
			return list.get(0).getCode();
		return "";
	}
	
	private String initCode()
	{
		return String.valueOf((int)((Math.random()*9+1)*100000));
	}
}
