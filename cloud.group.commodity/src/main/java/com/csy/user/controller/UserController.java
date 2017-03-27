package com.csy.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.csy.account.domain.dto.UserAccountDTO;
import com.csy.account.domain.emus.AccountTypeEn;
import com.csy.base.controller.BaseController;
import com.csy.exception.BusinessException;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;
import com.csy.user.domain.dto.UserDTO;
import com.csy.user.domain.dto.UserLevelExtendDTO;
import com.csy.user.domain.dto.UserSearchDTO;
import com.csy.user.manager.UserAccountManager;
import com.csy.user.manager.UserManager;
import com.csy.util.MD5Utils;
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
	@Value("${service.url}")
	private String service;
	
	@RequestMapping(value="/userinfo")
	public ModelAndView listSearch()
	{
		ModelAndView modelAndView = new ModelAndView("/person/userInfo");
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
		ModelAndView modelAndView = new ModelAndView("/person/userDetail");
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
			ModelAndView modelAndView = new ModelAndView("/person/alipay");
			return modelAndView;
		}
		ModelAndView modelAndView = new ModelAndView("/person/accountPay");
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
		ModelAndView modelAndView = new ModelAndView("/person/alipay");
		Map<String, Object> map= modelAndView.getModel();
		map.put("user", userDTO);
		return modelAndView;
	}
	
	@RequestMapping(value="/affiliates")
	public ModelAndView affiliates()
	{
		UserDTO userDTO =  userManager.findDetail(getLoginUserId());
		if(userDTO==null)
		{
			return new ModelAndView("redirect:/index.html");
		}
		ModelAndView modelAndView = new ModelAndView("/person/affiliates");
		Map<String, Object> map= modelAndView.getModel();
		StringBuffer buffer = new StringBuffer(service);
		buffer.append("promotion?aff=").append(getLoginUserId());
		map.put("url", buffer.toString());
		return modelAndView;
	}
	
	@RequestMapping(value="/account_CashDeatil")
	public String accountCashDeati()
	{
		if(getLoginUser()==null)
		{
			return "redirect:/index.html";
		}
		return "/person/userhistory";
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
			Cookie cookie = new Cookie("userDetial", dto.getUserCode());               
			cookie.setMaxAge(60*60*24*30); //cookie 保存30天
			getResponse().addCookie(cookie);
			getHttpSession().setAttribute("user", dto);
			return dto;
		}
		else
		{
			throw new BusinessException("用户名或密码错误！");
		}
	}
	
	@RequestMapping(value="/user/loginout")
	public String userLogOut(UserSearchDTO searchDTO)
	{
		getHttpSession().setAttribute("user", null);
		return "redirect:/index.html";
	}
	
	@RequestMapping(value = "/password")
	public String login() {
		return "changePwd";
	}
	
	@RequestMapping(value="/user/check",method=RequestMethod.POST)
	@ResponseJson
	public @ResponseBody long userPhone(@RequestParam("type") String type,@RequestParam("phone") String phone)
	{
		return userManager.check(type, phone);
	}
	
	@RequestMapping(value="/user/checkcode",method=RequestMethod.POST)
	@ResponseJson
	public @ResponseBody long userCode(@RequestParam("type") String type,@RequestParam("phone") String phone,@RequestParam("code") String code)
	{
		return userManager.checkCode(type, phone, code);
	}
	
	@RequestMapping(value="/user/changePwd")
	@ResponseJson
	public @ResponseBody void updatePwdByType(@RequestParam("type") String type,@RequestParam("phone") String phone,@RequestParam("pwd") String pwd)
	{
		pwd = MD5Utils.encoderByMd5With32Bit(pwd);
		userManager.updateUserByPhone(phone, pwd);
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
	public UserDTO LoginRedirect(HttpServletRequest request, HttpServletResponse response)
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
                throw new BusinessException("没有获取到响应参数");
            } else {
                accessToken = accessTokenObj.getAccessToken();
                tokenExpireIn = accessTokenObj.getExpireIn();

                // 利用获取到的accessToken 去获取当前用的openid -------- start
                OpenID openIDObj =  new OpenID(accessToken);
                openID = openIDObj.getUserOpenID();
                UserDTO userDTO = userManager.getUserByOpenId(openID);
                if(userDTO!=null)
                {
                	getHttpSession().setAttribute("user", userDTO);
        			return userDTO;
                }
                UserDTO dto = new UserDTO();
                
                
                // 利用获取到的accessToken 去获取当前用户的openid --------- end

                out.println("<p> start -----------------------------------利用获取到的accessToken,openid 去获取用户在Qzone的昵称等信息 ---------------------------- start </p>");
                UserInfo qzoneUserInfo = new UserInfo(accessToken, openID);
                UserInfoBean userInfoBean = qzoneUserInfo.getUserInfo();
                if (userInfoBean.getRet() == 0) {
                	dto.setOpenId(openID);
                	dto.setUserName(userInfoBean.getNickname());
                    userManager.insertUser(dto);
                    getHttpSession().setAttribute("user", userDTO);
                    getHttpSession().setAttribute("access_token", accessToken);
                    getHttpSession().setAttribute("token_expirein", String.valueOf(tokenExpireIn));
                    getHttpSession().setAttribute("qq_openid", openID);
                } else {
                    throw new BusinessException("很抱歉，我们没能正确获取到您的信息，原因是： " + userInfoBean.getMsg());
                }

            }
        } catch (QQConnectException e) {
        } catch (IOException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	/**
	 * 记住密码
	 * @param userDTO
	 * @return
	 */
	@RequestMapping(value="/user/rememberpwd")
	@ResponseJson
	public @ResponseBody void rememberPwd(UserDTO userDTO)
	{
		Cookie cookie = new Cookie("cookie_user", userDTO.getUserCode()+"-"+userDTO.getUserPwd());               
		cookie.setMaxAge(60*60*24*30); //cookie 保存30天
		getResponse().addCookie(cookie);
	}
	
	/**
	 * 获取cookie
	 * @param userDTO
	 * @return
	 */
	@RequestMapping(value="/user/cookie")
	@ResponseJson
	public @ResponseBody UserDTO getCookieUser()
	{
		return getCookie();
	}
	
	
	/**
	 * 用户注册
	 * @param userDTO
	 * @return
	 */
	@RequestMapping(value="/user/register")
	@ResponseJson
	public @ResponseBody void inserUser(UserDTO userDTO)
	{
		Integer aff = (Integer) getHttpSession().getAttribute("aff");
		if(aff!=null){
			userDTO.setUserId(aff);
		}
		userManager.insertUser(userDTO);
		Cookie cookie = new Cookie("userDetial", userDTO.getUserCode());               
		cookie.setMaxAge(60*60*24*30); //cookie 保存30天
		getResponse().addCookie(cookie);
		getHttpSession().setAttribute("user", userDTO);
	}
	
	/**
	 * 用户注册
	 * @param userDTO
	 * @return
	 */
	@RequestMapping(value="/promotion")
	public String promotion(@RequestParam(value="aff",required=false) Integer aff)
	{
		if(aff!=null){
			getHttpSession().setAttribute("aff", aff);
		}
		return "register";
	}
	
	/**
	 * 用户注册
	 * @param userDTO
	 * @return
	 */
	@RequestMapping(value="/privacy")
	public String privacy()
	{
		return "privacy";
	}
	
	@RequestMapping(value="/user/modify")
	@ResponseJson
	public @ResponseBody void updateUser(UserDTO userDTO)
	{
		userDTO.setId(getLoginUserId());
		userManager.updateUser(userDTO);
	}
	
	@RequestMapping(value="/newpwd")
	public String newpwd(UserDTO userDTO)
	{
		return "/person/newPwd";
	}
	
	@RequestMapping(value="/user/pwd")
	@ResponseJson
	public @ResponseBody void updatePwd(UserDTO userDTO)
	{
		UserDTO dto = getLoginUser();
		String pwd_old = MD5Utils.encoderByMd5With32Bit(userDTO.getUserPwdOld());
		if(!dto.getUserPwd().equals(pwd_old))
		{
			throw new BusinessException("原密码不符");
		}
		userDTO.setId(dto.getId());
		userDTO.setUserPwd(MD5Utils.encoderByMd5With32Bit(userDTO.getUserPwd()));
		userManager.updateUser(userDTO);
	}
	
	@RequestMapping(value="/user/usercode")
	@ResponseJson
	public @ResponseBody Boolean checkUsercode(@RequestParam("userCode") String userCode)
	{
		return userManager.checkCode(userCode);
	}
	
	@RequestMapping(value="/user/mail")
	@ResponseJson
	public @ResponseBody Boolean checkUserMail(@RequestParam("mail") String mail)
	{
		return userManager.checkMail(mail);
	}
	
	@RequestMapping(value="/user/mobile")
	@ResponseJson
	public @ResponseBody Boolean checkMobile(@RequestParam("mobile") String mobile)
	{
		return userManager.checkMobile(mobile);
	}
	
	@RequestMapping(value="/user/pay")
	@ResponseJson
	public @ResponseBody void getPay(UserAccountDTO accountDTO)
	{
		
		UserDTO userDTO = getLoginUser();
		userDTO.setCode(accountDTO.getCode());
		userDTO.setBalance(accountDTO.getAmount().longValue());
		int count = userManager.changeBalance(userDTO);
		if(count>0)
		{
			accountDTO.setUserId(userDTO.getId());
			accountDTO.setUserCode(userDTO.getUserCode());
			accountDTO.setUserPay(userDTO.getUserAlipay());
			accountDTO.setType(AccountTypeEn.OUT.getCode());
			userAccountManager.insertAccountDTO(accountDTO);
		}
	}
	
	@RequestMapping(value="/levellist")
	@ResponseObject
	public @ResponseBody Pagination<UserLevelExtendDTO> rebates(int type,String order ,int offset,int limit)
	{
		Pagination<UserLevelExtendDTO> pagination = userManager.pageSearch(type,getLoginUserId(),order,offset,limit);
		return pagination;
	}
	
}
