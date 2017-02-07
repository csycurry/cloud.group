package com.csy.banner.domain.manager;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.banner.domain.dto.BannerDTO;
import com.csy.dao.BannerMapper;
import com.csy.model.BannerExample;

@Service
public class BannerManager {
	@Autowired
	private BannerMapper bannerMapper;
	
	public List<BannerDTO> searchList()
	{
		BannerExample example = new BannerExample();
		bannerMapper.selectByExample(example );
		List<BannerDTO> dtos = new ArrayList<>();
		return dtos;
	}

}
