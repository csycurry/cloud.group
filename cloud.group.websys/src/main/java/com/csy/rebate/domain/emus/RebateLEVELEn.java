package com.csy.rebate.domain.emus;

public enum RebateLEVELEn {
	LEVEL1((byte)1,"LEVEL1",0.05),
	LEVEL2((byte)2,"LEVEL2",0.04),
	LEVEL3((byte)3,"LEVEL3",0.03),
	LEVEL4((byte)4,"LEVEL4",0.02),
	LEVEL5((byte)5,"LEVEL5",0.01);
	private Byte code;
	private String mean;
	private double level;
	
	public static RebateLEVELEn toEnum(int id) {
		RebateLEVELEn[] values = values();
		for (RebateLEVELEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	RebateLEVELEn(Byte code, String mean,double level) {
		this.code =  code;
		this.mean = mean;
		this.level = level;
	}

	public Byte getCode() {
		return code;
	}

	public String getMean() {
		return mean;
	}

	public double getLevel() {
		return level;
	}
	
	
}
