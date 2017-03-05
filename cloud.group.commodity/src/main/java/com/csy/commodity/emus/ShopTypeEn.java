package com.csy.commodity.emus;

public enum ShopTypeEn {
	Message((byte)0,"短信"),Email((byte)1,"邮件"),SEND((byte)2,"推送");
	private Byte code;
	private String mean;
	
	public static ShopTypeEn toEnum(int id) {
		ShopTypeEn[] values = values();
		for (ShopTypeEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	ShopTypeEn(Byte code, String mean) {
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