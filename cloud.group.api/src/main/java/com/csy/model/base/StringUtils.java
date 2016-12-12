package com.csy.model.base;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.util.CollectionUtils;

import com.csy.content.Constant;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

/**
 * @date 2015-6-10
 * @version 0.0.1
 * @description
 */
public class StringUtils extends org.apache.commons.lang.StringUtils {

	private static char[] numberChars;
	private static char[] randomChars;

	static {
		numberChars = new char[0];
		randomChars = new char[0];
		int j = 0;
		for (int i = 'A'; i <= 'Z'; i++) {
			if (!ArrayUtils.contains(Constant.RANDOM_FILTER_CHARS, (char) i)) {
				randomChars = ArrayUtils.add(randomChars, j++, (char) i);
			}
		}
		j = 0;
		for (int i = 0; i <= 9; i++) {
			if (!ArrayUtils.contains(Constant.RANDOM_FILTER_CHARS, String
					.valueOf(i).charAt(0))) {
				randomChars = ArrayUtils.add(randomChars, j, String.valueOf(i)
						.charAt(0));
				numberChars = ArrayUtils.add(numberChars, j, String.valueOf(i)
						.charAt(0));
				j++;
			}
		}
	}

	public static String createNumberRandomstr(int length) {
		String chars = "0123456789";
		String res = "";
		for (int i = 0; i < length; i++) {
			Random rd = new Random();
			res += chars.charAt(rd.nextInt(chars.length() - 1));
		}
		return res;
	}
	
	
	/**
	 * @author Zhu
	 * @date 2015-9-8下午10:16:02
	 * @description
	 * @param strArr
	 * @return
	 */
	public static Long[] parseLong(String[] strArr) {
		if (ArrayUtils.isEmpty(strArr)) {
			return null;
		}
		Long[] arr = new Long[strArr.length];
		for (int i = 0; i < strArr.length; i++) {
			arr[i] = Long.parseLong(strArr[i]);
		}
		return arr;
	}
	
	/**
	 * @author Zhu
	 * @date 2015-6-10下午12:46:53
	 * @description 不满 number 位 则填充0
	 * @param src
	 * @param number
	 * @return
	 */
	public static String fillZero(int src, int digit) {
		return StringUtils.leftPad(String.valueOf(src), digit, '0');
	}

	/**
	 * @author Zhu
	 * @date 2015-6-10下午1:55:56
	 * @description
	 * @return
	 */
	public static String generateRandomCode() {
		String firstLetter = RandomStringUtils.random(1, numberChars);
		return firstLetter + RandomStringUtils.random(7, randomChars);
	}

	/**
	 * @author Zhu
	 * @date 2015-8-7下午3:48:37
	 * @description
	 * @param str
	 * @return
	 */
	public static String upperFirst(String str) {
		return str.substring(0, 1).toUpperCase() + str.substring(1);
	}

	/**
	 * @author Zhu
	 * @date 2015-9-16下午10:57:19
	 * @description
	 * @param str
	 * @return
	 */
	public static Integer parseInt(String str) {
		if (StringUtils.isBlank(str)) {
			return null;
		}
		return Integer.parseInt(str);
	}

	/**
	 * @author Zhu
	 * @date 2015-9-19下午6:31:38
	 * @description
	 * @param remarks
	 * @return
	 */
	public static String[] parseRemark(String remarks) {

		if (StringUtils.isBlank(remarks)) {
			return null;
		}

		String[] failedReason = new String[2];
		String[] arr = remarks.split(";");
		for (int i = arr.length - 1; i >= 0; i--) {
			String[] innerArrs = arr[i].split(",");
			if (innerArrs.length < 4) {
				return null;
			}
			String type = innerArrs[2];
			if (type != null && type.equals("拒绝")) {
				String reasonStr = innerArrs[3];
				String[] reasons = reasonStr.split("\\|");
				StringBuffer reasonIds = new StringBuffer();
				StringBuffer reasonDesces = new StringBuffer();
				for (String string : reasons) {
					String[] idDescPair = string.split("=");
					if (idDescPair == null || idDescPair.length < 2) {
						continue;
					}
					reasonIds.append(idDescPair[0]).append("|");
					reasonDesces.append(idDescPair[1]).append("|");
				}
				if(reasonIds.length() > 0){
					failedReason[0] = reasonIds.toString();
					failedReason[1] = reasonDesces.toString();
				}
				return failedReason;
			}
		}

		return null;
	}
	
	public static String[] parseRemarkMuliti(String remarks) {
		
		List<String> remarkTypes = new ArrayList<String>(Arrays.asList(new String[]{"拒绝", "退回"}));
		return parseRemarkMuliti(remarks, remarkTypes);
	}

	public static String[] parseRemarkMuliti(String remarks, List<String> remarkTypes) {
		if (StringUtils.isBlank(remarks)) {
			return null;
		}

		String[] failedReason = new String[2];
		String[] arr = remarks.split(";");
		String date = null;
		StringBuffer reasonIds = new StringBuffer();
		StringBuffer reasonDesces = new StringBuffer();
		for (int i = arr.length - 1; i >= 0; i--) {
			String[] innerArrs = arr[i].split(",");
			if (innerArrs.length < 4) {
				continue;
			}
			String type = innerArrs[2];
			String currDate = innerArrs[0];
			if (isBlank(type) || CollectionUtils.isEmpty(remarkTypes)) {
				continue ;
			} 
			for(String remarkType : remarkTypes) {
				if (!contains(type, remarkType)) {
					continue ;
				}
				if(date == null) {
					date = currDate;
				}
				if(date != null && date.equals(currDate)){
					String reasonStr = innerArrs[3];
					String[] reasons = reasonStr.split("\\|");
					for (String string : reasons) {
						String[] idDescPair = string.split("=", 2);
						if (idDescPair == null || idDescPair.length < 2) {
							continue;
						}
						reasonIds.append(idDescPair[0]).append("|");
						reasonDesces.append(idDescPair[1]).append("|");
					}
				}
			}		
		}

		if(reasonIds.length() > 0){
			failedReason[0] = reasonIds.toString();
			failedReason[1] = reasonDesces.toString();
		}
		return failedReason;
	}


	/**
	 * 过滤字符串中utf-8编码大于3个字节的字符
	 *
	 * @param bytes
	 * @return
	 * @throws Exception
	 */
	private static String filterUtf8mb4(byte[] bytes) {
		ByteBuffer buffer = ByteBuffer.allocate(bytes.length);
		for (int i = 0; i < bytes.length; ) {
			if (bytes[i] > 0) {
				buffer.put(bytes[i++]);
				continue;
			}
			int h = bytes[i] + 256;
			if (((h >> 3) ^ 0x1E) == 0) {
				i += 4;
			} else if (((h >> 2) ^ 0x3E) == 0) {
				i += 5;
			} else if (((h >> 1) ^ 0x7E) == 0) {
				i += 6;
			} else {
				buffer.put(bytes[i++]);
			}
		}
		buffer.flip();
		try {
			return new String(Arrays.copyOf(buffer.array(), buffer.limit()), "utf-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException("The runtime environment do not support charset 'utf-8'", e);
		}
	}

	/**
	 * 过滤字符串中utf-8编码大于3个字节的字符
	 *
	 * @param text
	 * @return
	 * @throws Exception
	 */
	public static String filterUtf8mb4(String text) {
		if (isEmpty(text)) {
			return text;
		}
		try {
			return filterUtf8mb4(text.getBytes("utf-8"));
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException("The runtime environment do not support charset 'utf-8'", e);
		}
	}
	
	/**
	 * @param o
	 * @return
	 */
	public static String toStringValue(Object o) {
		return o != null ? o.toString() : EMPTY;
	}

    public static String joinEachCharWithSeperator(String s, String sp) {
        if (s == null || s.length() == 0) {
            return s;
        }
        StringBuilder sb = new StringBuilder();
        for (char c : s.toCharArray()) {
            sb.append(c).append(sp);
        }
        int sbLen = sb.length();
        sb.delete(sbLen - sp.length(), sbLen);
        return sb.toString();
    }
    
    /**
     * @author Zhu
     * @date 2016年6月29日 下午2:30:25
     * @description 
     * @param abc
     * @return
     */
    public static String convertToNumber(String abc){
    	StringBuffer changed = new StringBuffer();
		int length = abc.length();
		for (int i = 0; i < length; i++) {
			changed.append((int)abc.charAt(i) - 65);
		}
		return changed.toString();
    }

	public static void main(String args[]){
		System.out.println(filterUtf8mb4("你好中国687898sdhfkjsdjflksjd"));
		byte[] bs = {(byte) 0xF1, (byte) 0x9F, (byte) 0x98, (byte) 0x82, (byte) 0x31};
		System.out.println(filterUtf8mb4(bs));
		System.out.println(filterUtf8mb4("123"
                + String.valueOf(Character.toChars(0x1F6B9)) + "456"));
        System.out.println(joinEachCharWithSeperator("dkf*&,1中国345",","));
    }
}



