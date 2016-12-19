package com.csy.news.domain.emus;

public enum NewsTypeEn {
	NEWS((byte)1,"打码动态"),FANS((byte)2,"玩家心得"),PROBLEM((byte)3,"常见问题");
	private Byte code;
	private String mean;
	
	public static NewsTypeEn toEnum(Byte id) {
		NewsTypeEn[] values = values();
		for (NewsTypeEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	NewsTypeEn(Byte code, String mean) {
		this.code =  code;
		this.mean = mean;
	}

	public Byte getCode() {
		return code;
	}

	public String getMean() {
		return mean;
	}
}
