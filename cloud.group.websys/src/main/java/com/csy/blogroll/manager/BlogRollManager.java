package com.csy.blogroll.manager;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.csy.blogroll.domain.dto.BlogrollDTO;
import com.csy.blogroll.domain.dto.BlogrollSearchDTO;
import com.csy.blogroll.domain.emus.BlogRollStatusEn;
import com.csy.dao.BlogrollMapper;
import com.csy.model.Blogroll;
import com.csy.model.BlogrollExample;
@Service
public class BlogRollManager {
	@Autowired
	private BlogrollMapper blogrollMapper;
	
	public List<BlogrollDTO> search(BlogrollSearchDTO searchDTO)
	{
		List<BlogrollDTO> blogrollDTOs = new ArrayList<>();
		BlogrollExample example = new BlogrollExample();
		if(searchDTO.getStatus()!=null)
		{
			example.createCriteria().andStatusEqualTo(searchDTO.getStatus());
		}
		example.setOrderByClause("sort asc");
		List<Blogroll> list = blogrollMapper.selectByExample(example);
		for(Blogroll blogroll:list)
		{
			BlogrollDTO blogrollDTO = new BlogrollDTO();
			BeanUtils.copyProperties(blogroll, blogrollDTO);
			blogrollDTO.setStatusCn(BlogRollStatusEn.toEnum(blogroll.getStatus()).getMean());
			blogrollDTOs.add(blogrollDTO);
		}
		return blogrollDTOs;
	}
	
	public BlogrollDTO insertBlog(BlogrollDTO dto)
	{
		Blogroll blogroll = new Blogroll();
		BeanUtils.copyProperties(dto, blogroll);
		blogroll.setStatus(BlogRollStatusEn.UP.getCode());
		blogroll.setCreateTm(new Date());
		blogroll.setSort((int)blogrollMapper.countByExample(null));
		blogrollMapper.insert(blogroll);
		dto.setId(blogroll.getId());
		return dto;
	}
	
	public void updateBlog(BlogrollDTO dto)
	{
		Blogroll blogroll = new Blogroll();
		BeanUtils.copyProperties(dto, blogroll);
		blogrollMapper.updateByPrimaryKeySelective(blogroll);
	}
	
	public void editStatus(int id,Byte status)
	{
		Blogroll blogroll = new Blogroll();
		blogroll.setId(id);
		blogroll.setStatus(status);
		blogrollMapper.updateByPrimaryKeySelective(blogroll);
	}
	
	public void deleteBolg(int id)
	{
		blogrollMapper.deleteByPrimaryKey(id);
	}
	
	@Transactional
	public void sortBlog(int id)
	{
		Blogroll blogroll = new Blogroll();
		blogroll = blogrollMapper.selectByPrimaryKey(id);
		blogrollMapper.updateSort(blogroll);
		blogroll.setSort(blogroll.getSort()-1);
		blogrollMapper.updateByPrimaryKeySelective(blogroll);
	}

}
