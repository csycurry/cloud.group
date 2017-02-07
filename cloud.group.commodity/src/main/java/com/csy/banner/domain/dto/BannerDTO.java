package com.csy.banner.domain.dto;

import java.io.Serializable;
import java.util.Date;

public class BannerDTO implements Serializable{
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

	 private String title;

	 private String url;

	 private String newsLink;

	    private Byte type;

	    private Byte status;

	    private String creator;

	    private Date createTime;

	    private String modifier;

	    private Date modifyTime;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getUrl() {
			return url;
		}

		public void setUrl(String url) {
			this.url = url;
		}

		public String getNewsLink() {
			return newsLink;
		}

		public void setNewsLink(String newsLink) {
			this.newsLink = newsLink;
		}

		public Byte getType() {
			return type;
		}

		public void setType(Byte type) {
			this.type = type;
		}

		public Byte getStatus() {
			return status;
		}

		public void setStatus(Byte status) {
			this.status = status;
		}

		public String getCreator() {
			return creator;
		}

		public void setCreator(String creator) {
			this.creator = creator;
		}

		public Date getCreateTime() {
			return createTime;
		}

		public void setCreateTime(Date createTime) {
			this.createTime = createTime;
		}

		public String getModifier() {
			return modifier;
		}

		public void setModifier(String modifier) {
			this.modifier = modifier;
		}

		public Date getModifyTime() {
			return modifyTime;
		}

		public void setModifyTime(Date modifyTime) {
			this.modifyTime = modifyTime;
		}
	    
	    

}
