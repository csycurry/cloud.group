package com.csy.rebate.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.csy.base.controller.BaseController;
import com.csy.exception.BusinessException;
import com.csy.mission.domain.dto.MissionDTO;
import com.csy.mission.domain.dto.MissionSearchDTO;
import com.csy.mission.domain.emus.MissionTypeEn;
import com.csy.mission.manager.MissionManager;
import com.csy.model.base.Pagination;
import com.csy.rebate.domain.dto.RebateDTO;
import com.csy.rebate.domain.dto.RebateSearchDTO;
import com.csy.rebate.manager.RebateManager;
import com.csy.util.ResponseJson;
import com.csy.util.ResponseObject;
import com.csy.util.XSSFWorkbookUtil;

@Controller
public class RebateController extends BaseController{
	@Resource
	private RebateManager rebateManager;
	@Autowired
	private MissionManager missionManager;
	
	@RequestMapping(value="/backstage/rebate/page")
	public ModelAndView pageSearch(RebateSearchDTO searchDTO,int page)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/rebate/rebateList");
		Map<String, Object> map= modelAndView.getModel();
		searchDTO.setCurrentPage(page);
		Pagination<RebateDTO> pagination = rebateManager.pageSearch(searchDTO);
		map.put("list", pagination.getList());
		map.put("userNum", pagination.getTotalCount());
		map.put("u", searchDTO);
		map.put("currentPage", pagination.getCurrentPageIndex());
		map.put("pageNum", pagination.getCurrentPage());
		return modelAndView;
	}
	
	@RequestMapping(value="/rebateslist")
	@ResponseObject
	public @ResponseBody Pagination<RebateDTO> rebates(String order ,int offset,int limit)
	{
		RebateSearchDTO searchDTO = new RebateSearchDTO();
		searchDTO.setUserId(getLoginUserId());
		Pagination<RebateDTO> pagination = rebateManager.pageSearch(searchDTO,order,offset,limit);
		return pagination;
	}
	
	@RequestMapping(value="/backstage/rebate/detail")
	public ModelAndView detail(int id)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/rebate/rebateForm");
		Map<String, Object> map= modelAndView.getModel();
		RebateDTO dto = rebateManager.detail(id);
		map.put("m", dto);
		return modelAndView;
	}
	
	@RequestMapping(value="/backstage/rebate/settle")
	@ResponseJson
	public @ResponseBody Boolean rebate(int id)
	{
		List<Integer> ids = new ArrayList<>();
		ids.add(id);
		rebateManager.settleRebate(ids,getLoginStaffCode());
		return true;
		
	}
	
	/**
	 * 佣金撤回
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/backstage/rebate/callback")
	@ResponseJson
	public @ResponseBody Boolean callback(int id)
	{
		rebateManager.callbackRebate(id,getLoginStaffCode());
		return true;
		
	}
	
	@RequestMapping(value="/backstage/rebate/settlesearch")
	@ResponseJson
	public @ResponseBody Boolean rebateBySearch(RebateSearchDTO searchDTO)
	{
		rebateManager.settleRebateBySearch(searchDTO,getLoginStaffCode());
		return true;
		
	}
	
	@RequestMapping(value="/backstage/rebate/modify")
	@ResponseJson
	public @ResponseBody Boolean modify(RebateDTO dto)
	{
		rebateManager.editRebate(dto,getLoginStaffCode());
		return true;
		
	}
	
	@RequestMapping(value="/backstage/rebate/import")
	public ModelAndView importRebate()
	{
		ModelAndView modelAndView = new ModelAndView("/manager/rebate/importRebate");
		MissionSearchDTO searchDTO = new MissionSearchDTO();
		searchDTO.setType(MissionTypeEn.MARK.getCode());
		searchDTO.setStatus((byte)1);
		List<MissionDTO> list = missionManager.list(searchDTO);
		Map<String, Object> map= modelAndView.getModel();
		map.put("list", list);
		return modelAndView;
	}
	
	/**
     * 导入佣金
     * @throws Exception
     */
    @RequestMapping(value = "/backstage/rebate/importEx", method = RequestMethod.POST)
    @ResponseJson
    public @ResponseBody void importCode(@RequestParam("file") MultipartFile file,int missionId) throws Exception {
        if (file.getOriginalFilename().indexOf("xlsx") < 0&&file.getOriginalFilename().indexOf("xls") < 0)
            throw new BusinessException("文件格式错误，只支持后缀为xlsx的Excel");
        String[][] bodys = null;
        if(file.getOriginalFilename().indexOf("xlsx")>0)
        {
        	bodys = XSSFWorkbookUtil.readWorkBook(file.getInputStream(), 0);
        }
        else if(file.getOriginalFilename().indexOf("xls") > 0)
        {
        	bodys = XSSFWorkbookUtil.readHssWorkBook(file.getInputStream(), 0);
        }
        System.out.println(bodys.toString());
        rebateManager.inserBatch(bodys, missionId,getLoginStaffCode());
    }

}
