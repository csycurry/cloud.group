package com.csy.rebate.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.csy.base.controller.BaseController;
import com.csy.model.base.Pagination;
import com.csy.rebate.domain.dto.RebateDTO;
import com.csy.rebate.domain.dto.RebateSearchDTO;
import com.csy.rebate.manager.RebateManager;
import com.csy.util.ResponseObject;

@Controller
public class RebateController extends BaseController{
	@Resource
	private RebateManager rebateManager;
	
	@RequestMapping(value="/rebateslist")
	@ResponseObject
	public @ResponseBody Pagination<RebateDTO> rebates(byte type ,String order ,int offset,int limit)
	{
		RebateSearchDTO searchDTO = new RebateSearchDTO();
		searchDTO.setUserId(getLoginUserId());
		searchDTO.setStatus(type);
		Pagination<RebateDTO> pagination = rebateManager.pageSearch(searchDTO,order,offset,limit);
		return pagination;
	}
	
	
	
	
	
	
	
	

}
