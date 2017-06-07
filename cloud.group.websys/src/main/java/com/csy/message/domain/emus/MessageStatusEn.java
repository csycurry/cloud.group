package com.csy.message.domain.emus;

public enum MessageStatusEn {
	Message((byte)0,"短信"),Email((byte)1,"邮件"),SEND((byte)2,"推送");
	private Byte code;
	private String mean;
	
	public static MessageStatusEn toEnum(int id) {
		MessageStatusEn[] values = values();
		for (MessageStatusEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	MessageStatusEn(Byte code, String mean) {
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
