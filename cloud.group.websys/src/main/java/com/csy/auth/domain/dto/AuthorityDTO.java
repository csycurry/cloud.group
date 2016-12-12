package com.csy.auth.domain.dto;

import java.util.Date;

public class AuthorityDTO {
	private Integer id;
    private Integer parent;
    private Integer level;
    private String name;
    private String url;
    private Byte syscode;

    private String restype;
    private String rescode;
    private String resources;
    private String menudesc;
    private Byte disable;
    private String creator;
    private Date creattime;
    private String modifier;
    private Date modifytime;
    private Byte unmodifiable;
    public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getParent() {
		return parent;
	}
	public void setParent(Integer parent) {
		this.parent = parent;
	}
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Byte getSyscode() {
		return syscode;
	}
	public void setSyscode(Byte syscode) {
		this.syscode = syscode;
	}
	public String getRestype() {
		return restype;
	}
	public void setRestype(String restype) {
		this.restype = restype;
	}
	public String getRescode() {
		return rescode;
	}
	public void setRescode(String rescode) {
		this.rescode = rescode;
	}
	public String getResources() {
		return resources;
	}
	public void setResources(String resources) {
		this.resources = resources;
	}
	public String getMenudesc() {
		return menudesc;
	}
	public void setMenudesc(String menudesc) {
		this.menudesc = menudesc;
	}
	public Byte getDisable() {
		return disable;
	}
	public void setDisable(Byte disable) {
		this.disable = disable;
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
	public Byte getUnmodifiable() {
		return unmodifiable;
	}
	public void setUnmodifiable(Byte unmodifiable) {
		this.unmodifiable = unmodifiable;
	}
	public Byte getSort() {
		return sort;
	}
	public void setSort(Byte sort) {
		this.sort = sort;
	}
	private Byte sort;
}
