package com.csy.commodity.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.csy.banner.domain.dto.NewsBannerDto;
import com.csy.banner.domain.dto.NewsBannerSearchDto;
import com.csy.banner.domain.manager.NewsBannerManager;
import com.csy.base.controller.BaseController;
import com.csy.commodity.dto.CommodityDTO;
import com.csy.commodity.dto.CommoditySearchDTO;
import com.csy.commodity.manager.CommodityManager;
import com.csy.model.base.Pagination;
import com.csy.util.ResponseJson;

@Controller
public class CommodityController extends BaseController{
	@Autowired
	private NewsBannerManager newsBannerManager;

	@Autowired
	private CommodityManager commodityManager;
	@RequestMapping(value="/commodity/page")
	@ResponseJson
	public @ResponseBody Pagination<CommodityDTO> pageSearch(CommoditySearchDTO searchDTO,int page)
	{
		Pagination<CommodityDTO> pagination =  commodityManager.pageSearch(searchDTO);
		return pagination;
	}
	@RequestMapping(value="/index")
	public ModelAndView index()
	{
		ModelAndView modelAndView = new ModelAndView("/index");
		Map<String, Object> map = modelAndView.getModel();
		NewsBannerSearchDto bannerSearchDto = new NewsBannerSearchDto();
		bannerSearchDto.setType((byte)1);
		bannerSearchDto.setStatus((byte)1);
		List<NewsBannerDto> bannerDtos = newsBannerManager.viewList(bannerSearchDto);
		map.put("banners", bannerDtos);
		return modelAndView;
	}
	
	@RequestMapping(value="/commodity/detail")
	public ModelAndView detail(Long id)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/mission/missionForm");
		CommodityDTO extendDTO =  commodityManager.detail(id);
		Map<String, Object> map= modelAndView.getModel();
		map.put("m", extendDTO);
		return modelAndView;
	}
	
	@RequestMapping(value = "/rebate")
	public ModelAndView login() {
		ModelAndView modelAndView = new ModelAndView("/rebate");
		Map<String, Object> map = modelAndView.getModel();
		NewsBannerSearchDto bannerSearchDto = new NewsBannerSearchDto();
		bannerSearchDto.setType((byte)1);
		bannerSearchDto.setStatus((byte)1);
		List<NewsBannerDto> bannerDtos = newsBannerManager.viewList(bannerSearchDto);
		map.put("banners", bannerDtos);
		return modelAndView;
	}
}
