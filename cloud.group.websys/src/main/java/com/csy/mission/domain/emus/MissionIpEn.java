package com.csy.mission.domain.emus;

public enum MissionIpEn {
	CHANGE((byte)1,"换IP任务"),UNCHANGE((byte)0,"不换IP任务");
	private Byte code;
	private String mean;
	
	public static MissionIpEn toEnum(Byte id) {
		MissionIpEn[] values = values();
		for (MissionIpEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	MissionIpEn(Byte code, String mean) {
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
