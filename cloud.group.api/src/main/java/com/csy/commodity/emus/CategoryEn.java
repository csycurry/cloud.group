package com.csy.commodity.emus;

public enum CategoryEn {
	Message((byte)0,"全部"),
	FOOD((byte)1,"食品"),
	GIRL((byte)2,"女装"),
	HOME((byte)3,"居家"),
	BABY((byte)4,"母婴童装"),
	MAN((byte)5,"男装"),
	IN((byte)6,"内衣"),
	SM((byte)7,"数码家电"),
	WOMEN((byte)8,"美妆个护"),
	BAG((byte)9,"鞋包配饰"),
	SPORT((byte)10,"运动");
	
	private Byte code;
	private String mean;
	
	public static CategoryEn toEnum(int id) {
		CategoryEn[] values = values();
		for (CategoryEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	CategoryEn(Byte code, String mean) {
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
