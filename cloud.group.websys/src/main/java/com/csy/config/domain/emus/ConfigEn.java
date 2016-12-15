package com.csy.config.domain.emus;

public enum ConfigEn {
	exchangerate(1,"汇率"),
	sms(2,"api_key"),
	geetest_id(3,"geetest_id"),
	geetest_key(4,"geetest_key"),
	qq_id(5,"qq_id"),
	qq_key(6,"qq_key");
	private Integer code;
	private String mean;
	
	public static ConfigEn toEnum(int id) {
		ConfigEn[] values = values();
		for (ConfigEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	ConfigEn(int code, String mean) {
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
