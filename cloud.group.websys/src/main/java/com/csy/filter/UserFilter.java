package com.csy.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.apache.shiro.web.util.WebUtils;

public class UserFilter extends AccessControlFilter {

	
	private String loginUrl = "/login.json";

	/*
	 *即是否允许访问，返回true表示允许； 
	*/
	@Override
	protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue)
			throws Exception {
		Subject currentUser = SecurityUtils.getSubject();
		  if(currentUser.isAuthenticated()) {  
	            return true;
	        }  
		  return false;
	}

	/*
	 * 表示访问拒绝时是否自己处理，如果返回true表示自己不处理且继续拦截器链执行，返回false表示自己已经处理了（比如重定向到另一个页面）
	 * */
	@Override
	protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
		Subject subject = getSubject(request, response);
		if (!subject.isAuthenticated()) {
			saveRequest(request);
			WebUtils.issueRedirect(request, response, loginUrl);
//			
		} 
		return false;
		
		
		
		
	}
	
	

}
