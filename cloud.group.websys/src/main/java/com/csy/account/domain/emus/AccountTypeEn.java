package com.csy.account.domain.emus;

public enum AccountTypeEn {
	IN((byte)1,"收入"),OUT((byte)2,"提现"),DEL((byte)3,"扣款");
	private Byte code;
	private String mean;
	
	public static AccountTypeEn toEnum(int id) {
		AccountTypeEn[] values = values();
		for (AccountTypeEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	AccountTypeEn(Byte code, String mean) {
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
