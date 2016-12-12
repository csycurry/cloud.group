package com.wechat.util;

import java.util.Formatter;
import java.util.UUID;

public class UUIDUtil {

	/**
	 * 获取UUID随机数
	 * @return
	 */
	public static String getUUID() {
		return UUID.randomUUID().toString().replace("-", "");
	}

	public static String getRandomSn() {
		return String.valueOf(System.currentTimeMillis());
	}
	
	/**
	 * 创建时间戳
	 * 
	 * @return
	 */
	public static String createTimestamp() {
		return Long.toString(System.currentTimeMillis() / 1000);
	}
	
	/**
	 * 将字节数组转换为十六进
	 * 
	 * @param hash
	 * @return
	 */
	public static String byteToHex(final byte[] hash) {
		Formatter formatter = new Formatter();
		for (byte b : hash) {
			formatter.format("%02x", b);
		}
		String result = formatter.toString();
		formatter.close();
		return result;
	}
}
