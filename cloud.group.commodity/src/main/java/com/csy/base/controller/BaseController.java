package com.csy.base.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.csy.model.base.StringUtils;
import com.csy.user.domain.dto.UserDTO;

public class BaseController {

	/**
	 * 获取访问者IP
	 * 
	 * 在一般情况下使用Request.getRemoteAddr()即可，但是经过nginx等反向代理软件后，这个方法会失效。
	 * 
	 * 本方法先从Header中获取X-Real-IP，如果不存在再从X-Forwarded-For获得第一个IP(用,分割)，
	 * 如果还不存在则调用Request .getRemoteAddr()。
	 * 
	 * @param request
	 * @return
	 */
	public static String getIpAddr(HttpServletRequest request) throws Exception {
		String ip = request.getHeader("X-Real-IP");
		if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
			return ip;
		}
		ip = request.getHeader("X-Forwarded-For");
		if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
			// 多次反向代理后会有多个IP值，第一个为真实IP。
			int index = ip.indexOf(',');
			if (index != -1) {
				return ip.substring(0, index);
			} else {
				return ip;
			}
		} else {
			return request.getRemoteAddr();
		}
	}

	public UserDTO getLoginUser() {
		UserDTO userDTO = (UserDTO) getHttpSession().getAttribute("user");
		return userDTO;
	}

	public Integer getLoginUserId() {
		UserDTO userDTO = (UserDTO) getHttpSession().getAttribute("user");
		if (userDTO != null)
			return userDTO.getId();
		return 0;
	}


	public Session getSession() {
		Subject currentUser = SecurityUtils.getSubject();
		return currentUser.getSession();
	}

	public static HttpSession getHttpSession() {
		HttpSession session = null;
		try {
			session = getRequest().getSession();
		} catch (Exception e) {
		}
		return session;
	}

	public static HttpServletRequest getRequest() {
		ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
		return attrs.getRequest();
	}

	public static HttpServletResponse getResponse() {
		ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
		return attrs.getResponse();
	}

	public UserDTO getCookie() {
		String name = "";
		String password = "";
		HttpServletRequest request = getRequest();
		UserDTO dto = null;
		try {
			Cookie[] cookies = request.getCookies();
			if (cookies != null) {
				for (int i = 0; i < cookies.length; i++) {
					if (cookies[i].getName().equals("cookie_user")) {
						String value = cookies[i].getValue();
						if (value != null && !"".equals(value)) {
							name = cookies[i].getValue().split("-")[0];
							if (cookies[i].getValue().split("-")[1] != null
									&& !cookies[i].getValue().split("-")[1].equals("null")) {
								password = cookies[i].getValue().split("-")[1];
							}
						}
						dto = new UserDTO();
						dto.setUserCode(name);
						dto.setUserPwd(password);
						return dto;
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
}
