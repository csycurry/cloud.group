package com.csy.model.base;

import java.util.Date;
import java.util.List;

public class PageBase {

	public int pageSize;
	
	public int pageCount;
	
	public int rowCount;
	
	public int pageIndex;
	
	public int pageStartNum;
	
	public int pageEndNum;
	
	public String fileUrl;
	
	public String fileName;
	
	public List<String> fileUrls;
	
	public List<String> fileNames;
	
	public List<Integer> status;
	
	public List<String> level;
	
	public String dataStatus;
	
	public String groupOrderStatus;
	
	public String onStatus;
	public String beginDate;
	
	public String endDate;
	
	private Date nowDate;
	

	public String getGroupOrderStatus() {
		return groupOrderStatus;
	}

	public void setGroupOrderStatus(String groupOrderStatus) {
		this.groupOrderStatus = groupOrderStatus;
	}

	public String getOnStatus() {
		return onStatus;
	}

	public void setOnStatus(String onStatus) {
		this.onStatus = onStatus;
	}

	public Date getNowDate() {
		return nowDate;
	}

	public void setNowDate(Date nowDate) {
		this.nowDate = nowDate;
	}

	public String getBeginDate() {
		return beginDate;
	}

	public List<String>sexList;
	
	public List<String>remarkList;
	
	public List<Integer> isShopList;
	
	public void setBeginDate(String beginDate) {
		this.beginDate = beginDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}


	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageStartNum() {
		return pageStartNum;
	}

	public void setPageStartNum(int pageStartNum) {
		this.pageStartNum = pageStartNum;
	}

	public int getPageEndNum() {
		return pageEndNum;
	}

	public void setPageEndNum(int pageEndNum) {
		this.pageEndNum = pageEndNum;
	}

	public String getFileUrl() {
		return fileUrl;
	}

	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public List<String> getFileUrls() {
		return fileUrls;
	}

	public void setFileUrls(List<String> fileUrls) {
		this.fileUrls = fileUrls;
	}

	public List<String> getFileNames() {
		return fileNames;
	}

	public void setFileNames(List<String> fileNames) {
		this.fileNames = fileNames;
	}

	public List<Integer> getStatus() {
		return status;
	}

	public void setStatus(List<Integer> status) {
		this.status = status;
	}

	public List<String> getLevel() {
		return level;
	}

	public void setLevel(List<String> level) {
		this.level = level;
	}

	public String getDataStatus() {
		return dataStatus;
	}

	public void setDataStatus(String dataStatus) {
		this.dataStatus = dataStatus;
	}

	public List<String> getSexList() {
		return sexList;
	}

	public void setSexList(List<String> sexList) {
		this.sexList = sexList;
	}

	public List<String> getRemarkList() {
		return remarkList;
	}

	public void setRemarkList(List<String> remarkList) {
		this.remarkList = remarkList;
	}

	public List<Integer> getIsShopList() {
		return isShopList;
	}

	public void setIsShopList(List<Integer> isShopList) {
		this.isShopList = isShopList;
	}
	
}
