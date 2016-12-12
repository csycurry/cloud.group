package com.csy.message.domain.emus;

public enum MessageTypeEn {
	Message((byte)0,"短信"),Email((byte)1,"邮件"),SEND((byte)2,"推送");
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
