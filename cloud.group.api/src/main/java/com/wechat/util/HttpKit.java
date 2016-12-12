/**
 * 微信公众平台开发模式(JAVA) SDK
 */
package com.wechat.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.ning.http.client.AsyncHttpClient;
import com.ning.http.client.Response;
import com.xinyunlian.cloud.wx.model.Attachment;

/**
 * 功能描述：https 请求 微信为https的请求
 * 
 */
public class HttpKit {

	private static Log logger = LogFactory.getLog(HttpKit.class);
	private static final String DEFAULT_CHARSET = "UTF-8";

	/**
	 * 功能描述: get 请求
	 * @param url
	 * @param params
	 * @param headers
	 * @return
	 */
	public static String get(String url, Map<String, String> params, Map<String, String> headers) {
		
		AsyncHttpClient http = new AsyncHttpClient();
		try {
			AsyncHttpClient.BoundRequestBuilder builder = http.prepareGet(url);
			builder.setBodyEncoding(DEFAULT_CHARSET);
			if (params != null && !params.isEmpty()) {
				Set<String> keys = params.keySet();
				for (String key : keys) {
					builder.addQueryParameter(key, params.get(key));
				}
			}

			if (headers != null && !headers.isEmpty()) {
				Set<String> keys = headers.keySet();
				for (String key : keys) {
					builder.addHeader(key, params.get(key));
				}
			}
			Future<Response> f = builder.execute();
			String body = f.get().getResponseBody(DEFAULT_CHARSET);
			return body;
		} catch (Exception e) {
			logger.error("HttpKit.get have exception.", e);
			return null;
		} finally {
			http.close();
		}
	}

	/**
	 * 功能描述：get 请求
	 * @param url
	 * @return
	 */
	public static String get(String url) {
		return get(url, null);
	}

	/**
	 * 功能描述: get 请求
	 * @param url
	 * @param params
	 * @return
	 */
	public static String get(String url, Map<String, String> params) {
		return get(url, params, null);
	}

	/**
	 * 功能描述: POST 请求
	 * @param url
	 * @param params
	 * @return
	 */
	public static String post(String url, Map<String, String> params) {
		
		AsyncHttpClient http = new AsyncHttpClient();
		try {
			logger.info(String.format("post url: %s, params: %s", url, params));
			AsyncHttpClient.BoundRequestBuilder builder = http.preparePost(url);
			builder.setBodyEncoding(DEFAULT_CHARSET);
			if (params != null && !params.isEmpty()) {
				Set<String> keys = params.keySet();
				for (String key : keys) {
					builder.addParameter(key, params.get(key));
				}
			}
			Future<Response> f = builder.execute();
			String body = f.get().getResponseBody(DEFAULT_CHARSET);
			return body;
		} catch (Exception e) {
			logger.error("HttpKit.post have exception.", e);
			return null;
		} finally {
			http.close();
		}

	}

	/**
	 * 功能描述：上传媒体文件
	 * @param url
	 * @param file
	 * @return
	 */
	public static String upload(String url, File file) {

		AsyncHttpClient http = new AsyncHttpClient();
		try {
			AsyncHttpClient.BoundRequestBuilder builder = http.preparePost(url);
			builder.setBodyEncoding(DEFAULT_CHARSET);
			String BOUNDARY = "----WebKitFormBoundaryiDGnV9zdZA1eM1yL"; // 定义数据分隔线
			builder.setHeader("connection", "Keep-Alive");
			builder.setHeader(
					"user-agent",
					"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safari/537.36");
			builder.setHeader("Charsert", "UTF-8");
			builder.setHeader("Content-Type", "multipart/form-data; boundary=" + BOUNDARY);
			byte[] end_data = ("\r\n--" + BOUNDARY + "--\r\n").getBytes();// 定义最后数据分隔线
			builder.setBody(new UploadEntityWriter(end_data, file));

			Future<Response> f = builder.execute();
			String body = f.get().getResponseBody(DEFAULT_CHARSET);
			return body;
		} catch (Exception e) {
			logger.error("HttpKit.upload have exception.", e);
			return null;
		} finally {
			http.close();
		}

	}

	/**
	 * 功能描述：下载资源
	 * @param url
	 * @return
	 * @throws
	 */
	public static Attachment download(String url) {

		Attachment att = new Attachment();
		AsyncHttpClient http = new AsyncHttpClient();
		try {
			AsyncHttpClient.BoundRequestBuilder builder = http.prepareGet(url);
			builder.setBodyEncoding(DEFAULT_CHARSET);
			Future<Response> f = builder.execute();
			if (f.get().getContentType().equalsIgnoreCase("text/plain")) {
				att.setError(f.get().getResponseBody(DEFAULT_CHARSET));
			} else {
				BufferedInputStream bis = new BufferedInputStream(f.get().getResponseBodyAsStream());
				String ds = f.get().getHeader("Content-disposition");
				String fullName = ds.substring(ds.indexOf("filename=\"") + 10, ds.length() - 1);
				String relName = fullName.substring(0, fullName.lastIndexOf("."));
				String suffix = fullName.substring(relName.length() + 1);

				att.setFullName(fullName);
				att.setFileName(relName);
				att.setSuffix(suffix);
				att.setContentLength(f.get().getHeader("Content-Length"));
				att.setContentType(f.get().getContentType());
				att.setFileStream(bis);
			}
			return att;
		} catch (Exception e) {
			logger.error("HttpKit.download have exception.", e);
			return null;
		} finally {
			http.close();
		}

	}

	/**
	 * 功能描述：post请求
	 * @param url
	 * @param s
	 * @return
	 */
	public static String post(String url, String s) {
		AsyncHttpClient http = new AsyncHttpClient();
		try {
			AsyncHttpClient.BoundRequestBuilder builder = http.preparePost(url);
			builder.setBodyEncoding(DEFAULT_CHARSET);
			builder.setBody(s);
			Future<Response> f = builder.execute();
			String body = f.get().getResponseBody(DEFAULT_CHARSET);
			return body;
		} catch (Exception e) {
			logger.error("HttpKit.post have exception.", e);
			return null;
		} finally{
			http.close();
		}
	}
	
	/**
	 * 功能描述：post请求
	 * @param url
	 * @param s
	 * @return
	 */
	public static String postJson(String url, String s) {
		AsyncHttpClient http = new AsyncHttpClient();
		try {
			AsyncHttpClient.BoundRequestBuilder builder = http.preparePost(url);
			builder.setHeader("content-type", "application/json");
			builder.setBodyEncoding(DEFAULT_CHARSET);
			builder.setBody(s);
			Future<Response> f = builder.execute();
			String body = f.get().getResponseBody(DEFAULT_CHARSET);
			return body;
		} catch (Exception e) {
			logger.error("HttpKit.post have exception.", e);
			return null;
		} finally{
			http.close();
		}
	}

	public static void main(String[] args) throws Exception {
		// String accessToken =
		// "ulhEL9F2CciJezmGj47C-d3hAJZwXiAANctVIwSHwBRK7Z1enIRWeZKZekk8jS5abIkCo2YmMSDlqUFKOKvSaw";
		// String openId = "oeZTVt6XlCphRnCI-DlpdTyk27p4";
		// UserInfo u = WeChat.user.getUserInfo(accessToken, openId);
		// System.out.println(JSON.toJSONString(u));
		// System.out.println(WeChat.message.sendText(accessToken , openId ,
		// "测试"));
		// Map<String, Object> mgs = WeChat.uploadMedia(accessToken, "image",
		// new File("C:\\Users\\郭华\\Pictures\\13.jpg"));
		// System.out.println(JSON.toJSONString(mgs));
	}
}