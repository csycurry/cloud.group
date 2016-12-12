package com.csy.config.domain.emus;

public enum ConfigEn {
	exchangerate(1,"汇率"),sms(2,"api_key");
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
