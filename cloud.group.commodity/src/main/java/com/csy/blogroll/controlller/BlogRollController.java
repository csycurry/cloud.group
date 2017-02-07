package com.csy.blogroll.controlller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.csy.blogroll.domain.dto.BlogrollDTO;
import com.csy.blogroll.domain.dto.BlogrollSearchDTO;
import com.csy.blogroll.domain.emus.BlogRollStatusEn;
import com.csy.blogroll.manager.BlogRollManager;
import com.csy.util.ResponseJson;

@Controller
public class BlogRollController {
	@Autowired
	private BlogRollManager blogRollManager;
	
	@RequestMapping(value="/backstage/blog/form")
	public String addBlog()
	{
		return "/manager/blogroll/blogForm";
	}
	
	@RequestMapping(value="/backstage/blog/save")
	@ResponseJson
	public @ResponseBody void addBlog(BlogrollDTO blogrollDTO)
	{
		blogRollManager.insertBlog(blogrollDTO);
	}
	
	@RequestMapping(value="/backstage/blog/up",method=RequestMethod.POST)
	@ResponseJson
	public @ResponseBody void blogUp(int id)
	{
		blogRollManager.editStatus(id, BlogRollStatusEn.UP.getCode());
	}
	
	@RequestMapping(value="/backstage/blog/down",method=RequestMethod.POST)
	@ResponseJson
	public @ResponseBody void blogDown(int id)
	{
		blogRollManager.editStatus(id, BlogRollStatusEn.DOWN.getCode());
	}
	
	@RequestMapping(value="/backstage/blog/sort",method=RequestMethod.POST)
	@ResponseJson
	public @ResponseBody void sort(int id)
	{
		blogRollManager.sortBlog(id);
	}
	
	@RequestMapping(value="/backstage/bolgroll/blogList",method=RequestMethod.GET)
	public ModelAndView getBlogList(@ModelAttribute BlogrollSearchDTO searchDTO)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/blogroll/blogList");
		List<BlogrollDTO> list = blogRollManager.search(searchDTO);
		Map<String, Object> map = modelAndView.getModel();
		map.put("list", list);
		return modelAndView;
	}
}
