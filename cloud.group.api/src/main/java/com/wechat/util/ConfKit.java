/**
 * 微信公众平台开发模式(JAVA) SDK
 */
package com.wechat.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 配置文件
 *
 */
public class ConfKit {

	private static Log logger = LogFactory.getLog(ConfKit.class);
	private static Properties props = new Properties();

	static {
		try {
			//play框架下要用这种方式加载
			//props.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("/wechat.properties"));
			props.load(ConfKit.class.getResourceAsStream("/config.properties"));
		} catch (FileNotFoundException e) {
			logger.error(e.getMessage(),e);
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
		}
	}

	public static String get(String key) {
		return props.getProperty(key);
	}

    public static void setProps(Properties p){
        props = p;
    }
    /**
     * 微信公众号APPID
     * @return
     */
    public static String getAppid(){
    	return get("AppId");
    }
    /**
     * 微信公众号密钥
     * @return
     */
    public static String getAppSecret(){
    	return get("AppSecret");
    }
    /**
     * 微信支付请求中的密钥
     * @return
     */
    public static String getPaySignKey(){
    	return get("paySignKey");
    }
    /**
     * 微信支付商户ID
     * @return
     */
    public static String getPartnerId(){
    	return get("partnerId");
    }
    /**
     * 微信支付商户密钥
     * @return
     */
    public static String getPartnerKey(){
    	return get("partnerKey");
    }
}
