package com.csy.commodity.manager;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.dao.MobileCodeMapper;
import com.csy.model.MobileCode;
import com.csy.model.MobileCodeExample;

@Service
public class SmsManager {
	@Autowired
	private MobileCodeMapper mobileCodeMapper;
	
	
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
	
}
