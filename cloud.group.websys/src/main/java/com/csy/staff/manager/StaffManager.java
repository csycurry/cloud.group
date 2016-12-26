package com.csy.staff.manager;

import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.dao.StaffMapperExt;
import com.csy.dao.StaffRoleMapper;
import com.csy.model.Staff;
import com.csy.model.StaffExample;
import com.csy.model.StaffRole;
import com.csy.model.base.DateUtil;
import com.csy.model.base.StringUtils;
import com.csy.staff.domain.dto.StaffDTO;
import com.csy.staff.domain.dto.StaffSearchDTO;

@Service
public class StaffManager {
	@Autowired
	private StaffMapperExt staffMapperExt;
	@Autowired
	private StaffRoleMapper staffRoleMapper;
	
	public StaffDTO login(StaffSearchDTO searchDTO)
	{
		StaffExample example = createExample(searchDTO);
		List<Staff> list = staffMapperExt.selectByExample(example);
		StaffDTO staffDTO = new StaffDTO();
		if(list!=null&&list.size()>0)
		{
			Staff staff = list.get(0);
			staff.setLoginDt(new Date());
			BeanUtils.copyProperties(staff, staffDTO);
			staffMapperExt.updateByTimes(staff);
			staffDTO.setLoginTime(DateUtil.toLocaleString(staff.getLoginDt(), DateUtil.YYYY_MM_DD_HH_DD_SS));
		}
		return staffDTO;
	}
	
	public void insertStaff(StaffDTO staffDTO)
	{
		Staff staff = new Staff();
		BeanUtils.copyProperties(staffDTO, staff);
		staffMapperExt.insert(staff);
		StaffRole staffRole = new StaffRole();
		staffRole.setStaffid(staff.getId());
		staffRole.setRoleid(staffDTO.getRoleId());
		staffRoleMapper.insert(staffRole);
	}
	
	public StaffExample createExample(StaffSearchDTO searchDTO)
	{
		StaffExample example = new StaffExample();
		StaffExample.Criteria criteria = example.createCriteria();
		if(StringUtils.isNotEmpty(searchDTO.getCode()))
		{
			criteria.andCodeEqualTo(searchDTO.getCode());
		}
		if(StringUtils.isNotEmpty(searchDTO.getPassword()))
		{
//			md
			criteria.andPasswordEqualTo(searchDTO.getPassword());
		}
		if(searchDTO.getStatus()!=null)
		{
			criteria.andStatusEqualTo(searchDTO.getStatus());
		}
		return example;
	}
}
