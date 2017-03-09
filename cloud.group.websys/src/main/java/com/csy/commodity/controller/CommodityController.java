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
import com.csy.exception.BusinessException;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;
import com.csy.util.ResponseJson;

@Controller
public class CommodityController extends BaseController{
	@Autowired
	private CommodityManager commodityManager;
	
	@RequestMapping(value="/backstage/commodity/page")
	public ModelAndView pageSearch(CommoditySearchDTO searchDTO,int page)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/commodity/commodityList");
		Map<String, Object> map= modelAndView.getModel();
		searchDTO.setCurrentPage(page);
		Pagination<CommodityDTO> pagination =  commodityManager.pageSearch(searchDTO);
		map.put("list", pagination.getList());
		map.put("userNum", pagination.getTotalCount());
		map.put("u", searchDTO);
		map.put("currentPage", pagination.getCurrentPageIndex());
		map.put("pageNum", pagination.getCurrentPage());
		return modelAndView;
	}
	
	@RequestMapping(value="/backstage/commodity/save")
	@ResponseJson
	public @ResponseBody Boolean addMission(CommodityDTO commodityDTO)
	{
		if(StringUtils.isEmpty(commodityDTO.getCommodityName()))
		{
			throw new BusinessException("商品名称不能为空");
		}
		if(commodityDTO.getId()==null){
			commodityManager.insertCommodity(commodityDTO,getLoginStaffCode());
		}
		else{
			commodityManager.updateCommodity(commodityDTO, getLoginStaffCode());
		}
		return true;
		
	}
	
	@RequestMapping(value="/backstage/commodity/detail")
	public ModelAndView detail(Long id)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/commodity/commodityForm");
		CommodityDTO extendDTO =  commodityManager.detail(id);
		Map<String, Object> map= modelAndView.getModel();
		map.put("m", extendDTO);
		return modelAndView;
	}
	
	@RequestMapping(value="/backstage/commodity/remove")
	@ResponseJson
	public @ResponseBody void remove(Long id)
	{
		commodityManager.remove(id);
	}
	
	@RequestMapping(value="/backstage/commodity/commodityForm")
	public String MissionForm()
	{
		return "/manager/commodity/commodityForm";
	}
	
}
