package com.csy.news.controller;

import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.csy.base.controller.BaseController;
import com.csy.model.base.Pagination;
import com.csy.news.domain.dto.NewsDto;
import com.csy.news.domain.dto.NewsListDto;
import com.csy.news.domain.dto.NewsModifyDto;
import com.csy.news.domain.dto.NewsPageDto;
import com.csy.news.manager.NewsManager;
import com.csy.util.ResponseJson;


@Controller
public class NewsController extends BaseController{
	
	@Autowired
	private NewsManager newsManager;
	
	@RequestMapping(value="detail")
	public ModelAndView detail(@RequestParam("newsId") Integer newsId)
	{
		ModelAndView modelAndView = new ModelAndView("newsdetail");
		Map<String, Object> map = modelAndView.getModel();
		map.put("detail", newsManager.getDetail(newsId));
		return modelAndView;
	}
	
	@RequestMapping(value="/newslist")
	public ModelAndView list(int page)
	{
		ModelAndView modelAndView = new ModelAndView("newslist");
		Map<String, Object> map = modelAndView.getModel();
		NewsPageDto searchDTO = new NewsPageDto();
		searchDTO .setCurrentPage(page);
		searchDTO.setState((byte)1);
		Pagination<NewsListDto> pagination = newsManager.listNews(searchDTO);
		map.put("list", pagination.getList());
		map.put("userNum", pagination.getTotalCount());
		map.put("currentPage", pagination.getCurrentPageIndex());
		map.put("pageNum", pagination.getCurrentPage());
		return modelAndView;
	}
	
	@RequestMapping(value="/backstage/news/form")
	public  String createNews()
	{
		return "/manager/news/newsForm";
	}
	
	@RequestMapping(value="/backstage/news/add" , method = RequestMethod.POST)
	@ResponseJson
	public @ResponseBody void createNews(NewsModifyDto newsModifyDto)
	{
		newsManager.saveOrUpdateNews(newsModifyDto);
	}
	
	@RequestMapping(value="/news/update" , method = RequestMethod.POST)
	@ResponseJson
	public @ResponseBody void newsModify(NewsModifyDto newsModifyDto)
	{
		newsManager.saveOrUpdateNews(newsModifyDto);
	}
	
	@RequestMapping(value="/news/remove")
	@ResponseJson
	public @ResponseBody void newsRemove(@RequestParam("newsId") Integer newsId)
	{
		newsManager.removeNews(newsId);
	}
	
	
	@RequestMapping(value="/backstage/news/page")
	public ModelAndView pageSearch(NewsPageDto searchDTO,int page)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/news/newsList");
		Map<String, Object> map= modelAndView.getModel();
		searchDTO.setCurrentPage(page);
		Pagination<NewsListDto> pagination = newsManager.listNews(searchDTO);
		map.put("list", pagination.getList());
		map.put("userNum", pagination.getTotalCount());
		map.put("u", searchDTO);
		map.put("currentPage", pagination.getCurrentPageIndex());
		map.put("pageNum", pagination.getCurrentPage());
		return modelAndView;
	}
	
	
	@RequestMapping(value="/news/detail" , method = RequestMethod.POST)
	@ResponseJson
	public @ResponseBody NewsDto newsDetail(@RequestParam("newsId") Integer newsId)
	{
		return newsManager.getDetail(newsId);
	}
	

	/**
	 * 上传文件
	 * @param file
	 * @return
	 * @throws IOException
	 * @throws IllegalStateException
	 */
	@RequestMapping(value = "/news/image/upload", method = RequestMethod.POST)
	public @ResponseBody ModelMap upload(@RequestParam("file") MultipartFile file) {
		return newsManager.upload(file);
	}

	
	
}
