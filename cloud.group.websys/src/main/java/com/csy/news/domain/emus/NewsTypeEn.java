package com.csy.news.domain.emus;

public enum NewsTypeEn {
	BOOK((byte)1,"文章"),NEWS((byte)2,"新闻");
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
