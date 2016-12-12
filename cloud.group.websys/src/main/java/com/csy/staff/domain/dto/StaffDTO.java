package com.csy.staff.domain.dto;

import java.io.Serializable;
import java.util.Date;

public class StaffDTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
    private String code;

    private String password;

    private Integer departId;

    private String name;
   
    private Byte leader;
   
    private String duty;
    
    private Byte status;
    
    private String tel;
    
    private String mobile;
  
    private String idCard;

    private String email;

    private Date joinDt;

    private Date leaveDt;
   
    private Date loginDt;
   
    private Date updDt;

    private Integer cityId;

    private String version;

    private Byte type;

    private Date regularDt;

    private String addlog;

    private String oplog;

    private Byte gender;
    
    private String thirdpartyAccount;
    
    private String creator;

    private Date creattime;

    private String modifier;
  
    private Date modifytime;
    private Byte disable;
    private String account;
  
    private Byte unmodifiable;

    private Date birthday;

    private String remark;
    
    private Integer roleId;
    
    public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getDepartId() {
		return departId;
	}

	public void setDepartId(Integer departId) {
		this.departId = departId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Byte getLeader() {
		return leader;
	}

	public void setLeader(Byte leader) {
		this.leader = leader;
	}

	public String getDuty() {
		return duty;
	}

	public void setDuty(String duty) {
		this.duty = duty;
	}

	public Byte getStatus() {
		return status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getJoinDt() {
		return joinDt;
	}

	public void setJoinDt(Date joinDt) {
		this.joinDt = joinDt;
	}

	public Date getLeaveDt() {
		return leaveDt;
	}

	public void setLeaveDt(Date leaveDt) {
		this.leaveDt = leaveDt;
	}

	public Date getLoginDt() {
		return loginDt;
	}

	public void setLoginDt(Date loginDt) {
		this.loginDt = loginDt;
	}

	public Date getUpdDt() {
		return updDt;
	}

	public void setUpdDt(Date updDt) {
		this.updDt = updDt;
	}

	public Integer getCityId() {
		return cityId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public Byte getType() {
		return type;
	}

	public void setType(Byte type) {
		this.type = type;
	}

	public Date getRegularDt() {
		return regularDt;
	}

	public void setRegularDt(Date regularDt) {
		this.regularDt = regularDt;
	}

	public String getAddlog() {
		return addlog;
	}

	public void setAddlog(String addlog) {
		this.addlog = addlog;
	}

	public String getOplog() {
		return oplog;
	}

	public void setOplog(String oplog) {
		this.oplog = oplog;
	}

	public Byte getGender() {
		return gender;
	}

	public void setGender(Byte gender) {
		this.gender = gender;
	}

	public String getThirdpartyAccount() {
		return thirdpartyAccount;
	}

	public void setThirdpartyAccount(String thirdpartyAccount) {
		this.thirdpartyAccount = thirdpartyAccount;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public Date getCreattime() {
		return creattime;
	}

	public void setCreattime(Date creattime) {
		this.creattime = creattime;
	}

	public String getModifier() {
		return modifier;
	}

	public void setModifier(String modifier) {
		this.modifier = modifier;
	}

	public Date getModifytime() {
		return modifytime;
	}

	public void setModifytime(Date modifytime) {
		this.modifytime = modifytime;
	}

	public Byte getDisable() {
		return disable;
	}

	public void setDisable(Byte disable) {
		this.disable = disable;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Byte getUnmodifiable() {
		return unmodifiable;
	}

	public void setUnmodifiable(Byte unmodifiable) {
		this.unmodifiable = unmodifiable;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getLoginIp() {
		return loginIp;
	}

	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}

	private String loginIp;
}
