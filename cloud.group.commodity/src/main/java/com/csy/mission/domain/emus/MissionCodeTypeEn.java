package com.csy.mission.domain.emus;

public enum MissionCodeTypeEn {
	INIT((byte)0,"自动生成"),IMPORT((byte)1,"导入");
	private Byte code;
	private String mean;
	
	public static MissionCodeTypeEn toEnum(Byte id) {
		MissionCodeTypeEn[] values = values();
		for (MissionCodeTypeEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	MissionCodeTypeEn(Byte code, String mean) {
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
