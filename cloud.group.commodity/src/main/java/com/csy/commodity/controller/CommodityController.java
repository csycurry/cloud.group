package com.csy.commodity.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.csy.base.controller.BaseController;
import com.csy.commodity.dto.CommodityDTO;
import com.csy.commodity.dto.CommoditySearchDTO;
import com.csy.commodity.manager.CommodityManager;
import com.csy.model.base.Pagination;
import com.csy.util.ResponseJson;

@Controller
public class CommodityController extends BaseController{
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
	public String index()
	{
		return "index";
	}
	
	@RequestMapping(value="/commodity/detail")
	public ModelAndView detail(int id)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/mission/missionForm");
		CommodityDTO extendDTO =  commodityManager.detail(id);
		Map<String, Object> map= modelAndView.getModel();
		map.put("m", extendDTO);
		return modelAndView;
	}
	
}
