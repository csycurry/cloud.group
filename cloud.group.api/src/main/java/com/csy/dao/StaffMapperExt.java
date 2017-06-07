package com.csy.dao;

import com.csy.model.Staff;

public interface StaffMapperExt extends StaffMapper{
	int updateByTimes(Staff record);
}