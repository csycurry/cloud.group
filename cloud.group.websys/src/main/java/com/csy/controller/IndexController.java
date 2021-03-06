package com.csy.controller;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.csy.account.domain.emus.AccountTypeEn;
import com.csy.auth.domain.dto.AuthorityExtendDTO;
import com.csy.banner.domain.dto.NewsBannerDto;
import com.csy.banner.domain.dto.NewsBannerSearchDto;
import com.csy.banner.domain.manager.NewsBannerManager;
import com.csy.base.controller.BaseController;
import com.csy.blogroll.domain.dto.BlogrollSearchDTO;
import com.csy.blogroll.domain.emus.BlogRollStatusEn;
import com.csy.blogroll.manager.BlogRollManager;
import com.csy.config.domain.dto.SystemConfigDTO;
import com.csy.config.domain.emus.ConfigEn;
import com.csy.config.manager.SystemConfigManager;
import com.csy.mission.domain.dto.MissionDTO;
import com.csy.mission.domain.dto.MissionSearchDTO;
import com.csy.mission.manager.MissionManager;
import com.csy.news.domain.dto.NewsPageDto;
import com.csy.news.manager.NewsManager;
import com.csy.staff.manager.StaffManager;
import com.csy.user.domain.dto.UserDTO;
import com.csy.user.manager.UserAccountManager;

@Controller
public class IndexController extends BaseController{
	@Autowired
	private MissionManager missionManager;
	@Autowired
	private NewsBannerManager newsBannerManager;
	@Autowired
	private NewsManager newsManager;
	@Autowired
	private BlogRollManager blogRollManager;
	@Autowired
	private SystemConfigManager systemConfigManager;
	@Autowired
	private UserAccountManager userAccountManager;
	@Autowired
	private StaffManager staffManager;
	
	@RequestMapping(value = "/main")
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView("/manager/index");
		List<AuthorityExtendDTO> authorityExtendDTOs = staffManager.getAuthorityDTO(getLoginStaffId());
		Map<String, Object> map = modelAndView.getModel();
		map.put("auths", authorityExtendDTOs);
		return modelAndView;
	}
	
	@RequestMapping(value="/index")
	public ModelAndView indexMap()
	{
		ModelAndView modelAndView = new ModelAndView("/index");
		UserDTO userDTO = (UserDTO)getHttpSession().getAttribute("user");
		Map<String, Object> map = modelAndView.getModel();
		if(userDTO!=null)
			map.put("userCode", userDTO.getUserCode());
		MissionSearchDTO searchDTO = new MissionSearchDTO();
		searchDTO.setStatus((byte)1);
		searchDTO.setPageSize(6);
		List<MissionDTO> list = missionManager.pageSearch(searchDTO).getList();
		map.put("missions", list);
		NewsBannerSearchDto bannerSearchDto = new NewsBannerSearchDto();
		bannerSearchDto.setType((byte)1);
		List<NewsBannerDto> bannerDtos = newsBannerManager.viewList(bannerSearchDto);
		map.put("banners", bannerDtos);
		NewsPageDto newsPageDto = new NewsPageDto();
		newsPageDto.setPageSize(10);
		newsPageDto.setState((byte)1);
		map.put("news", newsManager.listNews(newsPageDto).getList());
		BlogrollSearchDTO blogrollSearchDTO = new BlogrollSearchDTO();
		blogrollSearchDTO.setStatus(BlogRollStatusEn.UP.getCode());
		map.put("blogs",blogRollManager.search(blogrollSearchDTO));
		SystemConfigDTO configDTO = systemConfigManager.detail(ConfigEn.notice.getCode());
		map.put("notice", configDTO.getConfigValue());
		JSONObject jsonObject = userAccountManager.pageSearch("", 0, 20, null, AccountTypeEn.OUT.getCode());
		if(jsonObject!=null)
		{
			map.put("pay", jsonObject.get("rows"));
		}
		BigDecimal decimal = userAccountManager.staticaccount();
		map.put("decimal", decimal);
		return modelAndView;
		
	}

	@RequestMapping(value = "/login")
	public String login() {
		return "manager/login";
	}

	@RequestMapping(value = "/register")
	public String register() {
		return "/register";
	}
	
	@RequestMapping(value = "groupFrom")
	public String groupForm() {

		return "groupForm";
	}
	
	@RequestMapping(value = "groupList")
	public String groupList() {

		return "groupList";
	}

	
	
	

}
