package com.csy.controller;

import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.csy.account.domain.emus.AccountTypeEn;
import com.csy.banner.domain.dto.NewsBannerDto;
import com.csy.banner.domain.dto.NewsBannerSearchDto;
import com.csy.banner.domain.manager.NewsBannerManager;
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
import com.csy.news.domain.emus.NewsTypeEn;
import com.csy.news.manager.NewsManager;
import com.csy.user.domain.dto.UserDTO;
import com.csy.user.manager.UserAccountManager;

@Controller
public class IndexController {
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
	
	@RequestMapping(value = "/main")
	public String index() {

		return "/manager/index";
	}
	
	@RequestMapping(value="/index")
	public ModelAndView indexMap()
	{
		ModelAndView modelAndView = new ModelAndView("/index");
		Subject currentUser = SecurityUtils.getSubject();
		UserDTO userDTO = (UserDTO)currentUser.getSession().getAttribute("user");
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
		newsPageDto.setType(NewsTypeEn.BOOK.getCode().intValue());
		map.put("news", newsManager.listNews(newsPageDto).getList());
		BlogrollSearchDTO blogrollSearchDTO = new BlogrollSearchDTO();
		blogrollSearchDTO.setStatus(BlogRollStatusEn.UP.getCode());
		map.put("blogs",blogRollManager.search(blogrollSearchDTO));
		SystemConfigDTO configDTO = systemConfigManager.detail(ConfigEn.notice.getCode());
		map.put("notice", configDTO.getConfigValue());
		JSONObject jsonObject = userAccountManager.pageSearch("", 0, 20, null, AccountTypeEn.OUT.getCode());
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
