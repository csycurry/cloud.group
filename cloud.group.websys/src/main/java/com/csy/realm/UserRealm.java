package com.csy.realm;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.subject.WebSubject;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.csy.dao.StaffMapper;
import com.csy.model.Staff;
import com.csy.model.StaffExample;
import com.csy.staff.domain.dto.StaffDTO;
import com.csy.staff.domain.dto.StaffSearchDTO;

public class UserRealm extends AuthorizingRealm {
	@Autowired
	private StaffMapper StaffMapper;
	/*
	 * 权限认证；
	*/
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		  //获取当前登录的用户名 
		String currentUsername = (String) super.getAvailablePrincipal(principals);
		//此处应该从数据库取得数据进行验证
		SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();
		
		if (null != currentUsername && "jadyer".equals(currentUsername)) {
			
			simpleAuthorInfo.addRole("admin");
			
			simpleAuthorInfo.addStringPermission("admin:manage");
		
			return simpleAuthorInfo;
		} else if (null != currentUsername && "����".equals(currentUsername)) {
			
			return simpleAuthorInfo;
		}
	
		return null;
	}
	
	
	private ApplicationContext getApplicationContext()
	{
	    ServletRequest request = ((WebSubject)SecurityUtils.getSubject()).getServletRequest();   
	    HttpSession httpSession = ((HttpServletRequest)request).getSession();   
	    return  WebApplicationContextUtils.getWebApplicationContext(httpSession.getServletContext());  
	}

	/**
	 * 验证当前登录的Subject；登陆验证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken)
			throws AuthenticationException {
		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;

		String password = new String(token.getPassword());
		StaffExample example = new StaffExample();
		example.createCriteria().andCodeEqualTo(token.getUsername()).andPasswordEqualTo(password);
		List<Staff> list = StaffMapper.selectByExample(example);
//		StaffDTO staffDTO = staffManager.login(searchDTO );
		if (!list.isEmpty()) {
			StaffDTO staffDTO = new StaffDTO();
			BeanUtils.copyProperties(list.get(0), staffDTO);
			setSession("staff",staffDTO);
			return new SimpleAuthenticationInfo(token.getUsername(), token.getCredentials(),
					getName());
		} else {
			throw new UnknownAccountException("用户名或密码错误！");
		}
	}

	private void setSession(Object key, Object value) {
		Subject currentUser = SecurityUtils.getSubject();
		if (null != currentUser) {
			Session session = currentUser.getSession();
			System.out.println("Session[" + session.getTimeout() + "]");
			if (null != session) {
				session.setAttribute(key, value);
			}
		}
	}

}
