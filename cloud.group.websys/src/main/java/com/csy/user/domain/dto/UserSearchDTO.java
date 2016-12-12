package com.csy.user.domain.dto;

import java.io.Serializable;

import com.csy.common.domain.dto.BasePageDTO;

public class UserSearchDTO extends BasePageDTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String userCode;

    private String userName;

    private String userMail;
    
    private String userPwd;

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
    
    
}
