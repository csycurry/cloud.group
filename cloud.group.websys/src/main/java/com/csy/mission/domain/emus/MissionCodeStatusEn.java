package com.csy.mission.domain.emus;

public enum MissionCodeStatusEn {
	UNUSE((byte)0,"未使用"),USED((byte)1,"已用"),DELETE((byte)99,"删除");
	private Byte code;
	private String mean;
	
	public static MissionCodeStatusEn toEnum(Byte id) {
		MissionCodeStatusEn[] values = values();
		for (MissionCodeStatusEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	MissionCodeStatusEn(Byte code, String mean) {
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
