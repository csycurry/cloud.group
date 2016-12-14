package com.csy.util;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.aspectj.lang.JoinPoint;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;


public class HeaderWithResponseObjectAspect extends ResponseAspect {

	@Override
	public void before(JoinPoint jp) {
		super.before(jp);
		
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
		
		String reqParamsString = (String) request.getAttribute(reqParamsStringKey);
		String authCode = request.getHeader("User-Code");
		reqParamsString += ",with User-Code:" + StringUtils.trimToEmpty(authCode);
		request.setAttribute(reqParamsStringKey, reqParamsString);
	}

}
