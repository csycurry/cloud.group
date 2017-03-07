package com.csy.commodity.emus;

public enum CategoryEn {
	Message("0","全部"),
	FOOD("1","食品"),
	GIRL("2","女装"),
	HOME("3","居家"),
	BABY("4","母婴童装"),
	MAN("5","男装"),
	IN("6","内衣"),
	SM("7","数码家电"),
	WOMEN("8","美妆个护"),
	BAG("9","鞋包配饰"),
	SPORT("10","运动");
	
	private String code;
	private String mean;
	
	public static CategoryEn toEnum(String id) {
		CategoryEn[] values = values();
		for (CategoryEn en : values) {
			if (en.getCode().equals(id)) {
				return en;
			}
		}
		return null;
	}

	CategoryEn(String code, String mean) {
		this.code =  code;
		this.mean = mean;
	}

	public String getCode() {
		return code;
	}

	public String getMean() {
		return mean;
	}
}
