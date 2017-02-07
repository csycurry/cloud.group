package com.csy.auth.domain.emus;

public enum AutoLevelEn {
	SYSTEM(1,"系统"),TOP(2,"一级菜单"),SECOND(3,"二级菜单"),FUNC(4,"函数");
	private Integer code;
	private String mean;
	
	public static AutoLevelEn toEnum(int id) {
		AutoLevelEn[] values = values();
		for (AutoLevelEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	AutoLevelEn(int code, String mean) {
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
