package com.csy.user.controller;

import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.csy.base.controller.BaseController;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;
import com.csy.user.domain.dto.UserDTO;
import com.csy.user.domain.dto.UserSearchDTO;
import com.csy.user.manager.UserAccountManager;
import com.csy.user.manager.UserManager;
import com.csy.util.ResponseJson;
import com.csy.util.ResponseObject;
@Controller
public class UserController extends BaseController{
	@Autowired
	private UserManager userManager;
	@Autowired
	private UserAccountManager userAccountManager; 
	
	@RequestMapping(value="/userinfo")
	public ModelAndView listSearch()
	{
		ModelAndView modelAndView = new ModelAndView("userInfo");
		Map<String, Object> map= modelAndView.getModel();
		UserDTO userDTO =  userManager.findDetail(getLoginUserId());
		if(userDTO==null)
		{
			return new ModelAndView("redirect:/index.html");
		}
		map.put("user", userDTO);
		return modelAndView;
	}
	
	@RequestMapping(value="/userDetail")
	public ModelAndView userDetail()
	{
		UserDTO userDTO =  userManager.findDetail(getLoginUserId());
		if(userDTO==null)
		{
			return new ModelAndView("redirect:/index.html");
		}
		ModelAndView modelAndView = new ModelAndView("userDetail");
		Map<String, Object> map= modelAndView.getModel();
		map.put("user", userDTO);
		return modelAndView;
	}
	
	@RequestMapping(value="/userPay")
	public ModelAndView userPay()
	{
		UserDTO userDTO =  userManager.findDetail(getLoginUserId());
		if(userDTO==null)
		{
			return new ModelAndView("redirect:/index.html");
		}
		if(StringUtils.isEmpty(userDTO.getUserAlipay()))
		{
			ModelAndView modelAndView = new ModelAndView("alipay");
			return modelAndView;
		}
		ModelAndView modelAndView = new ModelAndView("accountPay");
		Map<String, Object> map= modelAndView.getModel();
		map.put("user", userDTO);
		return modelAndView;
	}
	
	@RequestMapping(value="/alipay")
	public ModelAndView aliPay()
	{
		UserDTO userDTO =  userManager.findDetail(getLoginUserId());
		if(userDTO==null)
		{
			return new ModelAndView("redirect:/index.html");
		}
		ModelAndView modelAndView = new ModelAndView("alipay");
		Map<String, Object> map= modelAndView.getModel();
		map.put("user", userDTO);
		return modelAndView;
	}
	
	@RequestMapping(value="/account_CashDeatil")
	public String accountCashDeati()
	{
		if(getLoginUser()==null)
		{
			return "redirect:/index.html";
		}
		return "/userhistory";
	}
	
	@RequestMapping(value="/account_CashData")
	@ResponseObject
	public @ResponseBody JSONObject pagesearch(String order ,int offset,int limit)
	{
		JSONObject object = userAccountManager.pageSearch(order, offset, limit, getLoginUserId());
		return object;
	}
	
	@RequestMapping(value="/user/login",method=RequestMethod.POST)
	@ResponseJson
	public @ResponseBody UserDTO userLog(UserSearchDTO searchDTO)
	{
		UserDTO dto = userManager.login(searchDTO);
		if(dto!=null)
		{
			UsernamePasswordToken token = new UsernamePasswordToken(dto.getUserCode(), dto.getUserPwd());
			token.setRememberMe(true);
	
			Subject currentUser = SecurityUtils.getSubject();
			try {
	
				currentUser.login(token);
				currentUser.getSession().setAttribute("user", dto);
			} catch (AuthenticationException ae) {
	
				ae.printStackTrace();
	
				return null;
			}
			if (currentUser.isAuthenticated()) {
				return dto;
			} else {
	
				return null;
			}
		}
		else
		{
			return dto;
		}
	}
	
	/**
	 * QQ登陆
	 * @return
	 */
	public Boolean loginForQQ()
	{
		return null;
		
	}
	
	
	
	/**
	 * 用户注册
	 * @param userDTO
	 * @return
	 */
	@RequestMapping(value="/user/register")
	@ResponseJson
	public @ResponseBody UserDTO inserUser(UserDTO userDTO)
	{
		userManager.insertUser(userDTO);
		UsernamePasswordToken token = new UsernamePasswordToken(userDTO.getUserCode(), userDTO.getUserPwd());
		token.setRememberMe(true);
	
		Subject currentUser = SecurityUtils.getSubject();
		try {
			currentUser.login(token);
			currentUser.getSession().setAttribute("user", userDTO);
		} catch (AuthenticationException ae) {
	
			ae.printStackTrace();
	
			return null;
		}
		if (currentUser.isAuthenticated()) {
			return userDTO;
		} else {
			return null;
		}
	}
	
	
	//+++++++++++++++++++++++++++++++后台管理++++++++++++++++++++++++
	@RequestMapping(value="/backstage/user/userList")
	public ModelAndView getUserList(@ModelAttribute UserSearchDTO searchDTO,int page)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/user/userList");
		searchDTO.setCurrentPage(page);
		Pagination<UserDTO> list = userManager.pageSearch(searchDTO);
		Map<String, Object> map = modelAndView.getModel();
		map.put("userlist", list.getList());
		map.put("userNum", list.getTotalCount());
		map.put("u", searchDTO);
		map.put("currentPage", list.getCurrentPageIndex());
		map.put("pageNum", list.getCurrentPage());
		return modelAndView;
	}
}
