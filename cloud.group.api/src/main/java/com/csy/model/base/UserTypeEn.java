package com.csy.model.base;

public enum UserTypeEn {
	MARK((byte)1,"打码"),RETURN((byte)2,"返利");
	private Byte code;
	private String mean;
	
	public static UserTypeEn toEnum(int id) {
		UserTypeEn[] values = values();
		for (UserTypeEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	UserTypeEn(Byte code, String mean) {
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
