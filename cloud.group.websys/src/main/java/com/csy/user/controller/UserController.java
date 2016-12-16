package com.csy.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import com.qq.connect.QQConnectException;
import com.qq.connect.api.OpenID;
import com.qq.connect.api.qzone.UserInfo;
import com.qq.connect.javabeans.AccessToken;
import com.qq.connect.javabeans.qzone.UserInfoBean;
import com.qq.connect.oauth.Oauth;
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
	public @ResponseBody JSONObject pagesearch(String order ,int offset,int limit,Byte type)
	{
		JSONObject object = userAccountManager.pageSearch(order, offset, limit, getLoginUserId(),type);
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
	@RequestMapping(value="qqLogin")
	public void loginForQQ(HttpServletRequest request, HttpServletResponse response)
	{
		response.setContentType("text/html;charset=utf-8");
        try {
            response.sendRedirect(new Oauth().getAuthorizeURL(request));
        } catch (QQConnectException e) {
            e.printStackTrace();
        } catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping(value="LoginRedirect")
	public void LoginRedirect(HttpServletRequest request, HttpServletResponse response)
	{
		response.setContentType("text/html; charset=utf-8");
        try {
        	PrintWriter out = response.getWriter();
            AccessToken accessTokenObj = (new Oauth()).getAccessTokenByRequest(request);

            String accessToken   = null,
                   openID        = null;
            long tokenExpireIn = 0L;

            if (accessTokenObj.getAccessToken().equals("")) {
//                我们的网站被CSRF攻击了或者用户取消了授权
//                做一些数据统计工作
                System.out.print("没有获取到响应参数");
            } else {
                accessToken = accessTokenObj.getAccessToken();
                tokenExpireIn = accessTokenObj.getExpireIn();

                request.getSession().setAttribute("demo_access_token", accessToken);
                request.getSession().setAttribute("demo_token_expirein", String.valueOf(tokenExpireIn));

                // 利用获取到的accessToken 去获取当前用的openid -------- start
                OpenID openIDObj =  new OpenID(accessToken);
                openID = openIDObj.getUserOpenID();

                out.println("欢迎你，代号为 " + openID + " 的用户!");
                request.getSession().setAttribute("demo_openid", openID);
                // 利用获取到的accessToken 去获取当前用户的openid --------- end

                out.println("<p> start -----------------------------------利用获取到的accessToken,openid 去获取用户在Qzone的昵称等信息 ---------------------------- start </p>");
                UserInfo qzoneUserInfo = new UserInfo(accessToken, openID);
                UserInfoBean userInfoBean = qzoneUserInfo.getUserInfo();
                out.println("<br/>");
                if (userInfoBean.getRet() == 0) {
                    out.println(userInfoBean.getNickname() + "<br/>");
                    out.println(userInfoBean.getGender() + "<br/>");
                } else {
                    out.println("很抱歉，我们没能正确获取到您的信息，原因是： " + userInfoBean.getMsg());
                }

            }
        } catch (QQConnectException e) {
        } catch (IOException e) {
			e.printStackTrace();
		}
		
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
	
	@RequestMapping(value="/user/modify")
	@ResponseJson
	public @ResponseBody void updateUser(UserDTO userDTO)
	{
		userManager.updateUser(userDTO);
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
