package com.csy.exception;

import com.csy.content.CommonErrorCode;

/**
 * 涓氬姟寮傚父
 * 
 * @author licf
 */
public class BusinessException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	private static final String DEFAULT_MESSAGE_PREFIX = "Error Code : ";

	private String message;
	private String errorCode;
	private String extraMsg;

	public BusinessException(CommonErrorCode errorCode) {
		this(errorCode.getCode(), DEFAULT_MESSAGE_PREFIX + errorCode.getCode()
				+ "[" + errorCode.getMessage() + "]", null);
	}

	public BusinessException(String errorCode, String message, Throwable cause) {
		super(message, cause);
		this.errorCode = errorCode;
	}

	public BusinessException(String message) {
		super(message);
		this.message = message;
	}

	public BusinessException(Throwable cause) {
		super(cause);
	}

	public BusinessException(String message, Throwable cause) {
		super(message, cause);
		this.message = message;
	}

	/**
	 * @param message
	 * @param errorCode
	 */
	public BusinessException(String message, String errorCode) {
		super();
		this.message = message;
		this.errorCode = errorCode;
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
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
