package com.csy.util;

/**
 * @author Zhu
 * @date 2015-5-14
 * @version 0.0.1
 * @description 返回消息统一格式
 */
public class ResponseJsonBean {

	private int status = 1;
	private Object data;
	private String msg;
	private String errorCode;
	private String extraMsg;

	/**
	 * @return the status
	 */
	public int getStatus() {
		return status;
	}

	/**
	 * @param status
	 *            the status to set
	 */
	public void setStatus(int status) {
		this.status = status;
	}

	/**
	 * @return the data
	 */
	public Object getData() {
		return data;
	}

	/**
	 * @param data
	 *            the data to set
	 */
	public void setData(Object data) {
		this.data = data;
	}

	/**
	 * @return the msg
	 */
	public String getMsg() {
		return msg;
	}

	/**
	 * @param msg
	 *            the msg to set
	 */
	public void setMsg(String msg) {
		this.msg = msg;
	}

	/**
	 * @return the errorCode
	 */
	public String getErrorCode() {
		return errorCode;
	}

	/**
	 * @param errorCode
	 *            the errorCode to set
	 */
	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getExtraMsg() {
		return extraMsg;
	}

	public void setExtraMsg(String extraMsg) {
		this.extraMsg = extraMsg;
	}
}
