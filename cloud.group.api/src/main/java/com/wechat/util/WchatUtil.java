package com.wechat.util;

import org.apache.commons.lang.NumberUtils;
import org.apache.commons.lang.StringUtils;

public class WchatUtil {

    public static final String WEI_XIN_BROWSER = "MicroMessenger/";
    public static final int WEI_XIN_LEGAL_VERSION = 5;
    /**
     * 正则使用不熟练，只能自己苦逼解析
     * @param userAgent
     * @return
     */
    public static boolean isLegalVersion(String userAgent) {
        // 判断是否为微信，并对支付渠道做相应处理
        // "Mozilla/5.0(iphone;CPU iphone OS 5_1_1 like Mac OS X) AppleWebKit/534.46(KHTML,like Geocko) Mobile/9B206 MicroMessenger/5.0"
        // String userAgent = request.getHeader("user-agent");
        boolean isLegalVersion = false;
        if(StringUtils.isNotBlank(userAgent)) {
            // 判断是否为微信
            int position = userAgent.indexOf(WEI_XIN_BROWSER);
            userAgent.matches(WEI_XIN_BROWSER);
            if(position != -1) {
                String versionStr = userAgent.substring(position + WEI_XIN_BROWSER.length());
                String[] splitVersion = versionStr.split("\\.");

                // 程序解析
                if(splitVersion != null && splitVersion.length > 0) {
                    String mainVersion = splitVersion[0];
                    // 判断主版本号大于5
                    if(NumberUtils.isNumber(mainVersion)) {
                        int i = Integer.valueOf(mainVersion);
                        if(i >= WEI_XIN_LEGAL_VERSION) {
                            isLegalVersion = true;
                        }
                    }
                }
            }
        }
        //System.out.println("Agent: " + userAgent + ", isLegalVersion: " + isLegalVersion);
        return isLegalVersion;
    }
    public static void main(String[] args) {
        // 本来准备直接按照如下比较，结果发现当主版本号超过10的时候，就不灵了
        System.out.println("5.0".compareTo("5.0.2"));   // =0
        System.out.println("5.0".compareTo("10.1"));    // >0
        System.out.println("5.0".compareTo("0"));       // >0
        System.out.println("5.0".compareTo("4.0.2"));   // >0
        System.out.println("5.0".compareTo("5.1.2"));   // <0

        // 写个方法单独解析
        isLegalVersion("Mobile/9B206 MicroMessenger/5.0");  // true
        isLegalVersion("Mobile/9B206 MicroMessenger/5.0.2");// true
        isLegalVersion("Mobile/9B206 MicroMessenger/4.0");  // false
        isLegalVersion("Mobile/9B206 MicroMessenger/5.1");  // true
        isLegalVersion("Mobile/9B206 MicroMessenger/10.1"); // true
        isLegalVersion("Mobile/9B206 MicroMessenger/0.1");  // false
    }
}