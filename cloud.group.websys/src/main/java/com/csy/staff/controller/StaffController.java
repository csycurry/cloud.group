package com.csy.staff.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.csy.staff.domain.dto.StaffDTO;
import com.csy.staff.domain.dto.StaffSearchDTO;
import com.csy.staff.manager.StaffManager;
import com.csy.util.ResponseJson;

@Controller
public class StaffController {
	@Autowired
	private StaffManager staffManager;
	
	@RequestMapping(value="/backstage/staff/login",method=RequestMethod.POST)
	@ResponseJson
	public @ResponseBody String staffLogin(StaffSearchDTO searchDTO)
	{
		StaffDTO dto = staffManager.login(searchDTO);
		if(dto!=null)
		{
			UsernamePasswordToken token = new UsernamePasswordToken(dto.getCode(), dto.getPassword());
			token.setRememberMe(true);
	
			Subject currentUser = SecurityUtils.getSubject();
			try {
	
				currentUser.login(token);
	
			} catch (AuthenticationException ae) {
	
				ae.printStackTrace();
	
				return "操作失败";
			}
			if (currentUser.isAuthenticated()) {
				return "登录成功";
			} else {
	
				return "失败";
			}
		}
		else
		{
			return "失败";
		}
	}
}
