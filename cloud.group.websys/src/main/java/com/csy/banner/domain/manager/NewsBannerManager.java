package com.csy.banner.domain.manager;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.csy.banner.domain.dto.NewsBannerDto;
import com.csy.banner.domain.dto.NewsBannerSearchDto;
import com.csy.dao.NewsBannerMapper;
import com.csy.model.NewsBanner;
import com.csy.model.NewsBannerExample;

@Service
public class NewsBannerManager{
	@Autowired
	private NewsBannerMapper newsBannerMapper;
	public void saveBanner(JSONArray jsonArray)
	{
		if(jsonArray!=null)
		{
			for(int i=0;i<jsonArray.size();i++)
			{
				NewsBannerDto bannerDto = JSON.toJavaObject(jsonArray.getJSONObject(i), NewsBannerDto.class);
				saveOrUpdate(bannerDto);
			}
		}
	}
	
	public void saveOrUpdate(NewsBannerDto bannerDto)
	{
		NewsBanner newsBanner = new NewsBanner();
		BeanUtils.copyProperties(bannerDto, newsBanner);
		newsBanner.setNewsLink(bannerDto.getLink());
		if(bannerDto.getId()==null)
		{
			newsBanner.setCreateTime(new Date());
			newsBannerMapper.insert(newsBanner);
		}
		else
		{
//			newsBanner.setModifier(getLoginedStaffCode());
			newsBanner.setModifyTime(new Date());
			newsBannerMapper.updateByPrimaryKeySelective(newsBanner);
		}
	}
	
	public void remove(NewsBannerSearchDto bannerSearchDto)
	{
		newsBannerMapper.deleteByPrimaryKey(bannerSearchDto.getId());
	}
	
	public List<NewsBannerDto> viewList(NewsBannerSearchDto bannerSearchDto)
	{
		NewsBannerExample example = bulidExample(bannerSearchDto);
		List<NewsBanner> list = newsBannerMapper.selectByExample(example);
		List<NewsBannerDto> bannerDtos = new ArrayList<NewsBannerDto>();
		for(NewsBanner banner:list)
		{
			NewsBannerDto bannerDto = new NewsBannerDto();
			BeanUtils.copyProperties(banner, bannerDto);
			bannerDto.setLink(banner.getNewsLink());
			bannerDtos.add(bannerDto);
		}
		return bannerDtos;
	}
	
	private NewsBannerExample bulidExample(NewsBannerSearchDto bannerSearchDto)
	{
		NewsBannerExample example = new NewsBannerExample();
		NewsBannerExample.Criteria criteria = example.createCriteria();
		if(bannerSearchDto.getType()!=null)
			criteria.andTypeEqualTo(bannerSearchDto.getType());
		if(bannerSearchDto.getStatus()!=null)
			criteria.andStatusEqualTo(bannerSearchDto.getStatus());
		example.setOrderByClause("id");
		return example;
	}

}
