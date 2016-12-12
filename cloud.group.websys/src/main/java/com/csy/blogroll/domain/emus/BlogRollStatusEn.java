package com.csy.blogroll.domain.emus;

public enum BlogRollStatusEn {
	DOWN((byte)0,"下架"),UP((byte)1,"上架"),DELETE((byte)99,"删除");
	private Byte code;
	private String mean;
	
	public static BlogRollStatusEn toEnum(int id) {
		BlogRollStatusEn[] values = values();
		for (BlogRollStatusEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	BlogRollStatusEn(Byte code, String mean) {
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
