package com.csy.mission.domain.emus;

public enum MissionTypeEn {
	MARK((byte)1,"打码"),GAME((byte)2,"游戏"),MONEY((byte)3,"返利");
	private Byte code;
	private String mean;
	
	public static MissionTypeEn toEnum(Byte id) {
		MissionTypeEn[] values = values();
		for (MissionTypeEn en : values) {
			if (en.getCode() == id) {
				return en;
			}
		}
		return null;
	}

	MissionTypeEn(Byte code, String mean) {
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
