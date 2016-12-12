package com.csy.news.domain.dto;

import java.io.Serializable;

public class NewsPageDto implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// paginate related
	private String title;
	private Byte state;
	private Integer type;
	private int currentPage = 1;
	private int pageSize = 20;
	private String beginTm;
	private String endTm;
	
	public String getBeginTm() {
		return beginTm;
	}
	public void setBeginTm(String beginTm) {
		this.beginTm = beginTm;
	}
	public String getEndTm() {
		return endTm;
	}
	public void setEndTm(String endTm) {
		this.endTm = endTm;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Byte getState() {
		return state;
	}
	public void setState(Byte state) {
		this.state = state;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
}
