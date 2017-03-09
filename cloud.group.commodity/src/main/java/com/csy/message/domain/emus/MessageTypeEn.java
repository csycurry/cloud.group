package com.csy.message.domain.emus;

public enum MessageTypeEn {
	TAOBAO((byte)0,"淘宝"),TMAlL((byte)1,"天猫");
	private Byte code;
	private String mean;
	
	public static MessageTypeEn toEnum(int id) {
		MessageTypeEn[] values = values();
		for (MessageTypeEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	MessageTypeEn(Byte code, String mean) {
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
