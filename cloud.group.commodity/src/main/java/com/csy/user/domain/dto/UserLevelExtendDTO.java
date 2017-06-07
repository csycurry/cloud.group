package com.csy.user.domain.dto;

import java.io.Serializable;
import java.math.BigDecimal;

public class UserLevelExtendDTO implements Serializable {
    private Integer id;

    private Integer userId;

    private Integer level1;

    private Integer level2;

    private Integer level3;

    private Integer level4;

    private Integer level5;
    
    private BigDecimal earns;
    
    private String userName;
    
    private String createDate;
    
    private String level1Name;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getLevel1() {
        return level1;
    }

    public void setLevel1(Integer level1) {
        this.level1 = level1;
    }

    public Integer getLevel2() {
        return level2;
    }

    public void setLevel2(Integer level2) {
        this.level2 = level2;
    }

    public Integer getLevel3() {
        return level3;
    }

    public void setLevel3(Integer level3) {
        this.level3 = level3;
    }

    public Integer getLevel4() {
        return level4;
    }

    public void setLevel4(Integer level4) {
        this.level4 = level4;
    }

    public Integer getLevel5() {
        return level5;
    }

    public void setLevel5(Integer level5) {
        this.level5 = level5;
    }

	public BigDecimal getEarns() {
		return earns;
	}

	public void setEarns(BigDecimal earns) {
		this.earns = earns;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getLevel1Name() {
		return level1Name;
	}

	public void setLevel1Name(String level1Name) {
		this.level1Name = level1Name;
	}
}