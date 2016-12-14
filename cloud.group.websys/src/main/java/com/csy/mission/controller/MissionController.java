package com.csy.mission.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
import com.csy.mission.domain.dto.MissionExtendDTO;
import com.csy.mission.domain.dto.MissionSearchDTO;
import com.csy.mission.domain.dto.MissionSignDTO;
import com.csy.mission.domain.dto.MissionSignSearchDTO;
import com.csy.mission.domain.emus.MissionCodeTypeEn;
import com.csy.mission.manager.MissionManager;
import com.csy.mission.manager.MissionSignManager;
import com.csy.model.base.DateUtil;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;
import com.csy.rebate.domain.dto.RebateDTO;
import com.csy.rebate.manager.RebateManager;
import com.csy.user.domain.dto.UserDTO;
import com.csy.util.ResponseJson;
import com.csy.util.XSSFWorkbookUtil;

@Controller
public class MissionController extends BaseController{
	@Autowired
	private MissionManager missionManager;
	@Autowired
	private MissionSignManager missionSignManager;
	@Autowired
	private RebateManager rebateManager;
	
	@RequestMapping(value="/user_codes")
	public String missionList()
	{
		if(getLoginUser()==null)
		{
			return "redirect:/index.html";
		}
		return "usermissions";
	}
	
	@RequestMapping(value="/codes")
	public ModelAndView listSearch()
	{
		ModelAndView modelAndView = new ModelAndView("mission");
		Map<String, Object> map= modelAndView.getModel();
		MissionSearchDTO searchDTO = new MissionSearchDTO();
		searchDTO.setEndTm(DateUtil.getNowTime());
		List<MissionDTO> list =  missionManager.list(searchDTO);
		map.put("list", list);
		return modelAndView;
	}
	
	@RequestMapping(value="/code")
	public ModelAndView code_detail(int missionId)
	{
		ModelAndView modelAndView = new ModelAndView("missiondetail");
		Map<String, Object> map= modelAndView.getModel();
		MissionExtendDTO list =  missionManager.detail(missionId);
		UserDTO userDTO = getLoginUser();
		if(userDTO!=null)
		{
			List<RebateDTO> dtos = rebateManager.geRebateDTOs(userDTO.getId(), missionId);
			map.put("reb", dtos);
		}
		else
		{
			map.put("reb", null);
		}
		map.put("list", list);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/sign/code")
	@ResponseJson
	public @ResponseBody String getCode(Integer missionId)
	{
		return missionSignManager.getCode(getLoginUser(), missionId);
	}
	
	@RequestMapping(value="/backstage/mission/missionForm")
	public String MissionForm()
	{
		return "/manager/mission/missionForm";
	}
	
	@RequestMapping(value="/backstage/mission/page")
	public ModelAndView pageSearch(MissionSearchDTO searchDTO,int page)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/mission/missionList");
		Map<String, Object> map= modelAndView.getModel();
		searchDTO.setCurrentPage(page);
		Pagination<MissionDTO> pagination =  missionManager.pageSearch(searchDTO);
		map.put("list", pagination.getList());
		map.put("userNum", pagination.getTotalCount());
		map.put("u", searchDTO);
		map.put("currentPage", pagination.getCurrentPageIndex());
		map.put("pageNum", pagination.getCurrentPage());
		return modelAndView;
	}
	
	@RequestMapping(value="/backstage/mission/save")
	@ResponseJson
	public @ResponseBody Boolean addMission(MissionExtendDTO missionDTO)
	{
		if(StringUtils.isEmpty(missionDTO.getMissionTitle()))
		{
			throw new BusinessException("任务标题不能为空");
		}
		
		missionManager.insertMission(missionDTO);
		return true;
		
	}
	
	@RequestMapping(value="/backstage/mission/detail")
	public ModelAndView detail(int id)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/mission/missionForm");
		MissionExtendDTO extendDTO =  missionManager.detail(id);
		Map<String, Object> map= modelAndView.getModel();
		map.put("m", extendDTO);
		return modelAndView;
	}
	
	@RequestMapping(value="/backstage/sign/page")
	public ModelAndView pageSearchWithSign(MissionSignSearchDTO searchDTO,int page)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/mission/signList");
		Map<String, Object> map= modelAndView.getModel();
		searchDTO.setCurrentPage(page);
		Pagination<MissionSignDTO> pagination =  missionSignManager.pageSearch(searchDTO);
		map.put("list", pagination.getList());
		map.put("userNum", pagination.getTotalCount());
		map.put("u", searchDTO);
		map.put("currentPage", pagination.getCurrentPageIndex());
		map.put("pageNum", pagination.getCurrentPage());
		return modelAndView;
	}
	
	

    // /++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

	/**
     * 新增导入工号
     * @throws Exception
     */
    @RequestMapping(value = "/backstage/mission/importExcel", method = RequestMethod.POST)
    @ResponseJson
    public @ResponseBody String importCodeWithCreate(@RequestParam("file") MultipartFile file,HttpServletRequest req) throws Exception {
        if (file.getOriginalFilename().indexOf("xlsx") < 0&&file.getOriginalFilename().indexOf("xls") < 0)
            throw new BusinessException("文件格式错误，只支持后缀为xlsx的Excel");
        String[][] bodys = null;
        if(file.getOriginalFilename().indexOf("xlsx")>0)
        {
        	bodys = XSSFWorkbookUtil.readWorkBook(file.getInputStream(), 1);
        }
        else if(file.getOriginalFilename().indexOf("xls") > 0)
        {
        	bodys = XSSFWorkbookUtil.readHssWorkBook(file.getInputStream(), 1);
        }
        System.out.println(bodys.toString());
        
        MissionExtendDTO missionDTO = new MissionExtendDTO();
        missionDTO.setMissionTitle(req.getParameter("missionTitle"));
        missionDTO.setMissionContent(req.getParameter("missionContent"));
        if(StringUtils.isNotEmpty(req.getParameter("price")))
        {
        	missionDTO.setPrice(Short.valueOf(req.getParameter("price")));
        }
        missionDTO.setBeginTm(DateUtil.parse(req.getParameter("beginTm"),DateUtil.YYYY_MM_DD_HH_DD_SS));
        missionDTO.setEndTm(DateUtil.parse(req.getParameter("endTm"),DateUtil.YYYY_MM_DD_HH_DD_SS));
        missionDTO.setCodeType(MissionCodeTypeEn.IMPORT.getCode());
        missionDTO.setImageUrl(req.getParameter("imageUrl"));
        missionDTO.setThumbnailUrl(req.getParameter("thumbnailUrl"));
        if(StringUtils.isNotEmpty(req.getParameter("type")))
        	missionDTO.setType(Byte.valueOf(req.getParameter("type")));
        if(StringUtils.isNotEmpty(req.getParameter("settlementInterval")))
        	missionDTO.setSettlementInterval(Integer.valueOf(req.getParameter("settlementInterval")));
		missionManager.createMission(bodys, missionDTO);
		return "";
    }
	
	/**
     * 导入工号
     * @throws Exception
     */
    @RequestMapping(value = "/backstage/mission/importEx", method = RequestMethod.POST)
    @ResponseJson
    public @ResponseBody String importCode(@RequestParam("file") MultipartFile file,int missionId) throws Exception {
        if (file.getOriginalFilename().indexOf("xlsx") < 0&&file.getOriginalFilename().indexOf("xls") < 0)
            throw new BusinessException("文件格式错误，只支持后缀为xlsx的Excel");
        String[][] bodys = null;
        if(file.getOriginalFilename().indexOf("xlsx")>0)
        {
        	bodys = XSSFWorkbookUtil.readWorkBook(file.getInputStream(), 1);
        }
        else if(file.getOriginalFilename().indexOf("xls") > 0)
        {
        	bodys = XSSFWorkbookUtil.readHssWorkBook(file.getInputStream(), 1);
        }
        System.out.println(bodys.toString());
        missionManager.inserBatch(bodys, missionId);
        return "";
    }
}
