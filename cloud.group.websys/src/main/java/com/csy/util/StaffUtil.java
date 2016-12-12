package com.csy.util;



import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.csy.staff.domain.dto.StaffDTO;
import com.csy.staff.domain.dto.StaffSearchDTO;
import com.csy.staff.manager.StaffManager;

/**
 * 用户管理：
 * 
 * @author csy
 *
 */
@Component
public class StaffUtil {
	private static Logger logger = Logger.getLogger(StaffUtil.class);
	public static String TOKEN_KEY = "token";
	@Autowired
	private StaffManager staffManager;

	public StaffDTO checkUser(String code, String pwd) {
		StaffDTO staffDTO = null;
		try {
			StaffSearchDTO searchDTO = new StaffSearchDTO();
			searchDTO.setCode(code);
			searchDTO.setPassword(pwd);
			staffDTO = staffManager.login(searchDTO);
			if(staffDTO==null){
				return null;
			}
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			return null;
		}
		return staffDTO;
	}

}
