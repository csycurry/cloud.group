package com.csy.commodity.emus;

public enum CommodityTypeEn {
	RETURN((byte)1,"返利"),COUPON((byte)2,"优惠券");
	private Byte code;
	private String mean;
	
	public static CommodityTypeEn toEnum(int id) {
		CommodityTypeEn[] values = values();
		for (CommodityTypeEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	CommodityTypeEn(Byte code, String mean) {
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
