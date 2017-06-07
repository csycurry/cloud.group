package com.csy.commodity.manager;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.commodity.dto.CommodityDTO;
import com.csy.commodity.dto.CommoditySearchDTO;
import com.csy.commodity.emus.CategoryEn;
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
	
	public CommodityDTO insertCommodity(CommodityDTO commodityDTO, String staffCode) {
		Commodity commodity = new Commodity();
		BeanUtils.copyProperties(commodityDTO, commodity);
		commodity.setCreator(staffCode);
		commodity.setCreateTm(new Date());
		commodity.setModifior(staffCode);
		commodity.setModifyTm(new Date());
		if (StringUtils.isNotEmpty(commodityDTO.getCouponStartDate())) {
			commodity.setCouponStart(DateUtil.parse(commodityDTO.getCouponStartDate(), DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		if (StringUtils.isNotEmpty(commodityDTO.getCouponEndDate())) {
			commodity.setCouponEnd(DateUtil.parse(commodityDTO.getCouponEndDate(), DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		commodityMapperExt.insert(commodity);
		commodityDTO.setId(commodity.getId());
		return commodityDTO;
	}

	public void updateCommodity(CommodityDTO commodityDTO, String staffCode) {
		Commodity commodity = new Commodity();
		BeanUtils.copyProperties(commodityDTO, commodity);
		if (StringUtils.isNotEmpty(commodityDTO.getCouponStartDate())) {
			commodity.setCouponStart(DateUtil.parse(commodityDTO.getCouponStartDate(), DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		if (StringUtils.isNotEmpty(commodityDTO.getCouponEndDate())) {
			commodity.setCouponEnd(DateUtil.parse(commodityDTO.getCouponEndDate(), DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		commodity.setModifior(staffCode);
		commodity.setModifyTm(new Date());
		commodityMapperExt.updateByPrimaryKeySelective(commodity);
	}

	public Pagination<CommodityDTO> pageSearch(CommoditySearchDTO searchDTO) {
		Pagination<CommodityDTO> pagination = new Pagination<CommodityDTO>(searchDTO.getCurrentPage(),
				searchDTO.getPageSize());
		CommodityExample example = bulidExample(searchDTO);
		long count = commodityMapperExt.countByExample(example);
		pagination.setTotalCount((int) count);
		if (count > 0) {
			List<Commodity> newsList = commodityMapperExt.selectUserWithPage(example, pagination.getOffset(),
					pagination.getPageSize());
			List<CommodityDTO> retList = new ArrayList<CommodityDTO>(newsList.size());
			for (Commodity result : newsList) {
				CommodityDTO commodityDTO = new CommodityDTO();
				BeanUtils.copyProperties(result, commodityDTO);
				retList.add(commodityDTO);
				if (result.getShopType() != null) {
					commodityDTO.setShopTypeMean(ShopTypeEn.toEnum(result.getShopType().byteValue()).getMean());
				}
				if (result.getCommodityType() != null) {
					commodityDTO.setCommodityTypeMean(CommodityTypeEn.toEnum(result.getCommodityType()).getMean());
				}
				if (result.getCommodityCategory() != null) {
					commodityDTO.setCommodityCategoryMean(CategoryEn.toEnum(result.getCommodityCategory()).getMean());
				}
			}
			pagination.setList(retList);
		}

		return pagination;
	}

	public CommodityDTO detail(Long commodityId) {
		Commodity commodity = commodityMapperExt.selectByPrimaryKey(commodityId);
		CommodityDTO commodityDTO = new CommodityDTO();
		BeanUtils.copyProperties(commodity, commodityDTO);
		if (commodity.getShopType() != null) {
			commodityDTO.setShopTypeMean(ShopTypeEn.toEnum(commodity.getShopType().byteValue()).getMean());
		}
		if (commodity.getCommodityType() != null) {
			commodityDTO.setCommodityTypeMean(CommodityTypeEn.toEnum(commodity.getCommodityType()).getMean());
		}
		return commodityDTO;

	}

	public void remove(Long commodityId) {
		commodityMapperExt.deleteByPrimaryKey(commodityId);
	}
	
	public void choice(Long commodityId) {
		Commodity record = new Commodity();
		record.setId(commodityId);
		record.setChoiceness(true);
		commodityMapperExt.updateByPrimaryKeySelective(record);
	}
	

	private CommodityExample bulidExample(CommoditySearchDTO searchDTO) {
		CommodityExample example = new CommodityExample();
		CommodityExample.Criteria criteria = example.createCriteria();
		if (StringUtils.isNotEmpty(searchDTO.getCommodityTitle())) {
			criteria.andCommodityNameLike("%" + searchDTO.getCommodityTitle() + "%");
		}
		if (searchDTO.getCommodityId() != null) {
			criteria.andCommodityIdEqualTo(searchDTO.getCommodityId());
		}
		if (searchDTO.getCommodityType() != null) {
			criteria.andCommodityTypeEqualTo(searchDTO.getCommodityType());
		}
		if (StringUtils.isNotBlank(searchDTO.getCommodityCategory()) && !searchDTO.getCommodityCategory().equals("0")) {
			criteria.andCommodityCategoryEqualTo(searchDTO.getCommodityCategory());
		}
		if (StringUtils.isNotEmpty(searchDTO.getBeginTm())) {
			criteria.andCreateTmGreaterThanOrEqualTo(
					DateUtil.parse(searchDTO.getBeginTm(), DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		if (StringUtils.isNotEmpty(searchDTO.getEndTm())) {
			criteria.andCreateTmLessThanOrEqualTo(DateUtil.parse(searchDTO.getEndTm(), DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		example.setOrderByClause("create_tm desc");
		return example;
	}
	
	public void inserBatch(String[][] bodys, int type, String staffCode) {
		List<Commodity>  commodities = new ArrayList<>();
		if (type==0) {
			for (String[] body : bodys) {
				Commodity commodity = bulid(body);
				commodity.setCommodityType((byte)1);
				if(!check(commodity.getCommodityId(),commodity.getCommodityType())){
					continue;
				}
				commodities.add(commodity);
			}
		} else if (type==1) {
			for (String[] body : bodys) {
				Commodity commodity = bulid(body);
				commodity.setCommodityType((byte)2);
				if(!check(commodity.getCommodityId(),commodity.getCommodityType())){
					continue;
				}
				commodities.add(commodity);
			}
		}
		if (commodities.isEmpty()) {
			return;
		}
		commodityMapperExt.insertBatch(commodities);
	}
	
	private boolean check(long id ,byte type){
		CommodityExample commodityExample = new CommodityExample();
		commodityExample.createCriteria().andCommodityIdEqualTo(id)
		.andCommodityTypeEqualTo(type);
		return commodityMapperExt.selectByExample(commodityExample).isEmpty();
	}

	private Commodity bulid(String[] body) {
		Commodity commodity = new Commodity();
		commodity.setCommodityId(Long.valueOf(body[0]));
		commodity.setCommodityName(body[1]);
		commodity.setCommodityPic(body[2]);
		commodity.setCommodityDetail(body[3]);
		commodity.setCommodityCategory(getCategory(body[4]));
		commodity.setCommodityTbk(body[5]);
		commodity.setCommodityPrice(new BigDecimal(body[6]));
		commodity.setCommoditySales(new Integer(body[7]));
		commodity.setCommodityRate(new Double(body[8]));
		commodity.setSellerId(new Long(body[11]));
		commodity.setSellerName(body[10]);
		commodity.setShopName(body[12]);
		commodity.setShopType(getShopType(body[13]));
		commodity.setCouponId(body[14]);
		commodity.setCouponNum(new Integer(body[15]));
		commodity.setCouponResidue(new Integer(body[16]));
		commodity.setCouponDetail(body[17]);
		commodity.setCouponStart(DateUtil.parse(body[18], DateUtil.DEFAULT_DATE_FORMAT));
		commodity.setCouponEnd(DateUtil.parse(body[19], DateUtil.DEFAULT_DATE_FORMAT));
		commodity.setCouponLink(body[21]);
		commodity.setCouponPay(commodity.getCommodityPrice().subtract(new BigDecimal(body[17].substring(body[17].indexOf("减")+1, body[17].lastIndexOf("元")))));
		return commodity;
	}
	
	private byte getShopType(String name){
		if(name.equals("天猫")){
			return ShopTypeEn.Tmail.getCode();
		}else if(name.equals("淘宝")){
			return ShopTypeEn.TB.getCode();
		}
		return (byte)0;
	}
	
	private String getCategory(String name){
		if(name.indexOf("女")>0){
			return CategoryEn.GIRL.getCode();
		}else if(name.indexOf("食")>0||name.indexOf("保健")>0){
			return CategoryEn.FOOD.getCode();
		}else if(name.indexOf("家")>0){
			return CategoryEn.HOME.getCode();
		}else if(name.indexOf("童装")>0||name.indexOf("婴")>0){
			return CategoryEn.BABY.getCode();
		}else if(name.indexOf("男")>0){
			return CategoryEn.MAN.getCode();
		}else if(name.indexOf("内衣")>0){
			return CategoryEn.IN.getCode();
		}else if(name.indexOf("电器")>0){
			return CategoryEn.SM.getCode();
		}else if(name.indexOf("妆")>0||name.indexOf("护")>0){
			return CategoryEn.WOMEN.getCode();
		}else if(name.indexOf("运动")>0){
			return CategoryEn.SPORT.getCode();
		}else if(name.indexOf("鞋")>0||name.indexOf("包")>0){
			return CategoryEn.BAG.getCode();
		}
		return "";
	}
}
