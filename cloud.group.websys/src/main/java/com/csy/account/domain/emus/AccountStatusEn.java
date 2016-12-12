package com.csy.account.domain.emus;

public enum AccountStatusEn {
	SETTLE((byte)1,"已完成"),UNSETTLE((byte)0,"未完成"),DELETE((byte)99,"作废");
	private Byte code;
	private String mean;
	
	public static AccountStatusEn toEnum(int id) {
		AccountStatusEn[] values = values();
		for (AccountStatusEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	AccountStatusEn(Byte code, String mean) {
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
