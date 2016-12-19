package com.csy.news.manager;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.csy.dao.NewsMapperExt;
import com.csy.model.News;
import com.csy.model.NewsExample;
import com.csy.model.base.DateUtil;
import com.csy.model.base.Pagination;
import com.csy.news.domain.dto.NewsDto;
import com.csy.news.domain.dto.NewsListDto;
import com.csy.news.domain.dto.NewsModifyDto;
import com.csy.news.domain.dto.NewsPageDto;
import com.csy.news.domain.emus.NewsTypeEn;


@Service
public class NewsManager {
	@Autowired
	private NewsMapperExt newsMapper;       
	
	@Value("${image.server.directory}")
	private String imageServerDirectory;

	@Value("${image.server.domain}")
	private String imageServerDomain;
	
	private static final String SEPARATOR = "/";
	public void saveOrUpdateNews(NewsModifyDto newsModifyDto,String staffCode)
	{
		News news = new News();
		BeanUtils.copyProperties(newsModifyDto, news);
		if(news.getId()==null||news.getId()==0)
		{
			news.setCreator(staffCode);
			news.setCreateTime(new Date());
			news.setModifier(staffCode);
			news.setModifyTime(DateUtil.getCurrentDate());
			newsMapper.insertSelective(news);
		}
		else
		{
			news.setModifier(staffCode);
			news.setModifyTime(new Date());
			newsMapper.updateByPrimaryKeySelective(news);
		}
	}
	
	@Transactional
	public void removeNews(Integer newsId)
	{
		newsMapper.deleteByPrimaryKey(newsId);
	}

	public List<NewsListDto> getTopNews()
	{
		NewsExample example = new NewsExample();
//		example.createCriteria().andStateIn(Arrays.asList(NewsStateEn.TOP.getCode(), NewsStateEn.NORMAL.getCode()));
		example.setOrderByClause("state desc, sort asc");
		List<News> newsList= newsMapper.selectByExampleByPage(example, 0, 5);
		List<NewsListDto> retList = new ArrayList<NewsListDto>();
		for (News result : newsList) {
			NewsListDto newsListDto = new NewsListDto();
			BeanUtils.copyProperties(result, newsListDto);
			retList.add(newsListDto);
			newsListDto.setCreateDate(DateUtil.toLocaleString(result.getCreateTime(), "YYYY-MM-dd"));
		}
		return retList;
	}
	
	public List<NewsListDto> getTopNewsWithCache() {
		return getTopNews();
	}
	
	public Pagination<NewsListDto> listNewsWithCache(NewsPageDto newsPageDto) {
		return listNews(newsPageDto);
	}
	
	
	public Pagination<NewsListDto> listNews(NewsPageDto newsPageDto)
	{
		Pagination<NewsListDto> pagination = new Pagination<NewsListDto>(newsPageDto.getCurrentPage());
		pagination.setPageSize(newsPageDto.getPageSize());
		NewsExample example = bulidExample(newsPageDto);
		long count = newsMapper.countByExample(example);
		pagination.setTotalCount((int)count);
		if(count>0)
		{
			List<News> newsList= newsMapper.selectByExampleByPage(example, pagination.getOffset(), pagination.getPageSize());
			List<NewsListDto> retList = new ArrayList<NewsListDto>(newsList.size());
			for (News result : newsList) {
				NewsListDto newsListDto = new NewsListDto();
				BeanUtils.copyProperties(result, newsListDto);
				newsListDto.setCreateDate(DateUtil.toLocaleString(result.getCreateTime(), "YYYY-MM-dd"));
				if(result.getType()!=null)
					newsListDto.setTypeMean(NewsTypeEn.toEnum(result.getType().byteValue()).getMean());
				retList.add(newsListDto);
			}
			pagination.setList(retList);
		}
		 
		return pagination;
	}
	
	public NewsDto getDetail(Integer newsId)
	{
		NewsDto newsDto = new NewsDto();
		News news = newsMapper.selectByPrimaryKey(newsId);
		if(news==null)
			return null;
		BeanUtils.copyProperties(news, newsDto);
		newsDto.setCreateDate(DateUtil.toLocaleString(news.getCreateTime(), "YYYY-MM-dd"));
		return newsDto;
	}
	
	
	private NewsExample bulidExample(NewsPageDto dto)
	{
		NewsExample example = new NewsExample();
		NewsExample.Criteria criteria = example.createCriteria();
		if(StringUtils.isNotEmpty(dto.getTitle()))
			criteria.andTitleLike(dto.getTitle()+"%");
		if(dto.getType()!=null)
			criteria.andTypeEqualTo(dto.getType());
		if(dto.getState()!=null)
			criteria.andStateEqualTo(dto.getState());
		example.setOrderByClause("create_time desc");
		return example;
	}
	
	public ModelMap upload(MultipartFile file) {
		if(file==null)
			return null;
		//app.code
		String folderPath = getImageDiskPath(imageServerDirectory);
		File folder = new File(folderPath);
		if (!folder.exists()) {
			folder.mkdirs();
		}
		File dest = new File(folder, UUID.randomUUID().toString()+"."+FilenameUtils.getExtension(file.getOriginalFilename()));
		ModelMap modelMap = new ModelMap();
		try {
			
			
			file.transferTo(dest);
			modelMap.addAttribute("error", 0);
			modelMap.put("url", getImageHttpUrl(imageServerDomain,  dest.getAbsolutePath()));
		} catch (Exception e) {
			modelMap.addAttribute("error", 0);
			modelMap.put("message",e.getMessage());
		}
		return modelMap;
	}
	
	private String getImageHttpUrl(String imageServerDomain, String path) {
		StringBuffer sb = new StringBuffer(imageServerDomain
				+ (StringUtils.endsWith(imageServerDomain, "/") ? "" : "/"));
		sb.append("img/");
		return sb.toString();
	}
	/**
	 * @param imageServerDirectory2
	 * @param appCode2
	 * @return
	 */
	private String getImageDiskPath(String imageServerDirectorye) {
		Date date = new Date();
		StringBuilder builder = new StringBuilder();
		builder.append(imageServerDirectory).append(SEPARATOR)
		.append("img").append(SEPARATOR)
		.append(DateUtil.getYear(date)).append(SEPARATOR)
		.append(DateUtil.getMonth(date)).append(SEPARATOR)
		.append(DateUtil.getDay(date));

		return builder.toString();
	}
	
}
