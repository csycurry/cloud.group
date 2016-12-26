package com.csy.banner.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.csy.banner.domain.dto.NewsBannerSearchDto;
import com.csy.banner.domain.manager.NewsBannerManager;
import com.csy.base.controller.BaseController;
import com.csy.util.ResponseJson;

@Controller
public class NewsBannerController extends BaseController{
	@Autowired
	private NewsBannerManager newsBannerManager;
	
	@RequestMapping(value="/backstage/banner/save" , method = RequestMethod.POST)
	@ResponseJson
	public @ResponseBody void saveBanner(@RequestBody JSONArray jsonArray)
	{
		newsBannerManager.saveBanner(jsonArray);
	}
	
	@RequestMapping(value="/backstage/banner/remove" , method = RequestMethod.POST)
	@ResponseJson
	public @ResponseBody void removeBanner(int id)
	{
		newsBannerManager.remove(id);
	}
	
	@RequestMapping(value="/backstage/banner/view_list")
	public ModelAndView viewList(NewsBannerSearchDto bannerSearchDto)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/banner/bannerForm");
		Map<String, Object> map = modelAndView.getModel();
		map.put("list", newsBannerManager.viewList(bannerSearchDto));
		return 	modelAndView;
	}
	
	
	
}
