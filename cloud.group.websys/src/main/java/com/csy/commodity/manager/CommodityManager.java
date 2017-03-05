package com.csy.commodity.manager;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.csy.commodity.dto.CommodityDTO;
import com.csy.commodity.dto.CommoditySearchDTO;
import com.csy.commodity.emus.CommodityTypeEn;
import com.csy.commodity.emus.ShopTypeEn;
import com.csy.dao.CommodityMapperExt;
import com.csy.mission.domain.dto.MissionExtendDTO;
import com.csy.mission.domain.emus.MissionTypeEn;
import com.csy.model.Commodity;
import com.csy.model.CommodityExample;
import com.csy.model.MissionWithBLOBs;
import com.csy.model.base.DateUtil;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;

public class CommodityManager {
	
	@Autowired
	private CommodityMapperExt commodityMapperExt;
	
	public CommodityDTO insertMission(CommodityDTO commodityDTO,String staffCode)
	{
		Commodity commodity = new Commodity();
		BeanUtils.copyProperties(commodityDTO, commodity);
		commodity.setCreator(staffCode);
		commodity.setCreateTm(new Date());
		commodity.setModifior(staffCode);
		commodity.setModifyTm(new Date());
		if(StringUtils.isNotEmpty(commodityDTO.getCouponStartDate()))
		{
			commodity.setCouponStart(DateUtil.parse(commodityDTO.getCouponStartDate(),DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		if(StringUtils.isNotEmpty(commodityDTO.getCouponEndDate()))
		{
			commodity.setCouponEnd(DateUtil.parse(commodityDTO.getCouponEndDate(),DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		commodityMapperExt.insert(commodity);
		commodityDTO.setId(commodity.getId());
		return commodityDTO;
	}
	
	public void updateMission(CommodityDTO commodityDTO,String staffCode)
	{
		Commodity commodity = new Commodity();
		BeanUtils.copyProperties(commodityDTO, commodity);
		commodity.setModifior(staffCode);
		commodity.setModifyTm(new Date());
		commodityMapperExt.updateByPrimaryKeySelective(commodity);
	}
	
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
	
	public CommodityDTO detail(int commodityId)
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
	
	public void remove(int commodityId)
	{
		commodityMapperExt.deleteByPrimaryKey(commodityId);
	}
	
	private CommodityExample bulidExample(CommoditySearchDTO searchDTO) {
		CommodityExample example = new CommodityExample();
		CommodityExample.Criteria criteria = example.createCriteria();
		if(StringUtils.isNotEmpty(searchDTO.getCommodityTitle()))
		{
			criteria.andCommodityNameLike("%"+searchDTO.getCommodityTitle()+"%");
		}
//		if(searchDTO.getType()!=null)
//		{
//			criteria.andTypeEqualTo(searchDTO.getType());
//		}
		if(StringUtils.isNotEmpty(searchDTO.getBeginTm()))
		{
			criteria.andCreateTmGreaterThanOrEqualTo(DateUtil.parse(searchDTO.getBeginTm(),DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		if(StringUtils.isNotEmpty(searchDTO.getEndTm()))
		{
			criteria.andCreateTmLessThanOrEqualTo(DateUtil.parse(searchDTO.getEndTm(),DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		example.setOrderByClause("begin_tm desc");
		return example;
	}
	
}