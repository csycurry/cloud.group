package com.csy.news.domain.emus;

public enum NewsTypeEn {
	NEWS(1,"打码动态"),FANS(2,"玩家心得"),PROBLEM(3,"常见问题");
	private Integer code;
	private String mean;
	
	public static NewsTypeEn toEnum(Integer id) {
		NewsTypeEn[] values = values();
		for (NewsTypeEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	NewsTypeEn(Integer code, String mean) {
		this.code =  code;
		this.mean = mean;
	}

	public Integer getCode() {
		return code;
	}

	public String getMean() {
		return mean;
	}
}
