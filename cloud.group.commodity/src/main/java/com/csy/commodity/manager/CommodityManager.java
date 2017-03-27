package com.csy.commodity.manager;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.commodity.dto.CommodityDTO;
import com.csy.commodity.dto.CommoditySearchDTO;
import com.csy.commodity.emus.CommodityTypeEn;
import com.csy.commodity.emus.ShopTypeEn;
import com.csy.dao.CommodityMapperExt;
import com.csy.model.Commodity;
import com.csy.model.CommodityExample;
import com.csy.model.base.DateUtil;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;
@Service
public class CommodityManager {
	
	@Autowired
	private CommodityMapperExt commodityMapperExt;
	
	
	public Pagination<CommodityDTO> pageSearch(CommoditySearchDTO searchDTO)
	{
		Pagination<CommodityDTO> pagination = new Pagination<CommodityDTO>(searchDTO.getCurrentPage(),searchDTO.getPageSize());
		CommodityExample example = bulidExample(searchDTO);
		long count = commodityMapperExt.countByExample(example);
		pagination.setTotalCount((int)count);
		if(count>0)
		{
			List<Commodity> newsList= commodityMapperExt.selectUserWithPage(example, pagination.getOffset(), pagination.getPageSize());
			List<CommodityDTO> retList = new ArrayList<CommodityDTO>(newsList.size());
			for (Commodity result : newsList) {
				CommodityDTO commodityDTO = new CommodityDTO();
				BeanUtils.copyProperties(result, commodityDTO);
				retList.add(commodityDTO);
				if(result.getShopType()!=null){
					commodityDTO.setShopTypeMean(ShopTypeEn.toEnum(result.getShopType().byteValue()).getMean());
				}
				if(result.getCommodityType()!=null){
					commodityDTO.setCommodityTypeMean(CommodityTypeEn.toEnum(result.getCommodityType()).getMean());
				}
			}
			pagination.setList(retList);
		}
		 
		return pagination;
	}
	
	public CommodityDTO detail(Long commodityId)
	{
		Commodity commodity = commodityMapperExt.selectByPrimaryKey(commodityId);
		CommodityDTO commodityDTO = new CommodityDTO();
		BeanUtils.copyProperties(commodity, commodityDTO);
		if(commodity.getShopType()!=null){
			commodityDTO.setShopTypeMean(ShopTypeEn.toEnum(commodity.getShopType().byteValue()).getMean());
		}
		if(commodity.getCommodityType()!=null){
			commodityDTO.setCommodityTypeMean(CommodityTypeEn.toEnum(commodity.getCommodityType()).getMean());
		}
		return commodityDTO;
		
	}
	
	private CommodityExample bulidExample(CommoditySearchDTO searchDTO) {
		CommodityExample example = new CommodityExample();
		CommodityExample.Criteria criteria = example.createCriteria();
		if(StringUtils.isNotEmpty(searchDTO.getCommodityTitle()))
		{
			criteria.andCommodityNameLike("%"+searchDTO.getCommodityTitle()+"%");
		}
		if(searchDTO.getCommodityType()!=null)
		{
			criteria.andCommodityTypeEqualTo(searchDTO.getCommodityType());
		}
		if(StringUtils.isNotBlank(searchDTO.getCommodityCategory())&&!searchDTO.getCommodityCategory().equals("0")&&
				!searchDTO.getCommodityCategory().equals("-1"))
		{
			criteria.andCommodityCategoryEqualTo(searchDTO.getCommodityCategory());
		}
		if(searchDTO.getCommodityCategory().equals("-1")){
			criteria.andChoicenessEqualTo(true);
		}
		if(StringUtils.isNotEmpty(searchDTO.getBeginTm()))
		{
			criteria.andCreateTmGreaterThanOrEqualTo(DateUtil.parse(searchDTO.getBeginTm(),DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		if(StringUtils.isNotEmpty(searchDTO.getEndTm()))
		{
			criteria.andCreateTmLessThanOrEqualTo(DateUtil.parse(searchDTO.getEndTm(),DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
//		if(searchDTO.get)
//		criteria.and
		example.setOrderByClause("create_tm desc");
		return example;
	}
	
}
