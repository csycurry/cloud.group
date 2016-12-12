package com.csy.rebate.domain.emus;

public enum RebateStatusEn {
	SETTLE((byte)1,"已结算"),UNSETTLE((byte)0,"未结算"),DELETE((byte)99,"作废");
	private Byte code;
	private String mean;
	
	public static RebateStatusEn toEnum(int id) {
		RebateStatusEn[] values = values();
		for (RebateStatusEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	RebateStatusEn(Byte code, String mean) {
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
