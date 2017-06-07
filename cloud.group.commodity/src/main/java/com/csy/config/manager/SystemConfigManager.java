package com.csy.config.manager;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.config.domain.dto.SystemConfigDTO;
import com.csy.dao.SystemConfigMapper;
import com.csy.model.SystemConfig;
import com.csy.model.SystemConfigExample;

@Service
public class SystemConfigManager {
	@Autowired
	private SystemConfigMapper systemConfigMapper;
	
	public List<SystemConfigDTO> getConfig()
	{
		SystemConfigExample example = new SystemConfigExample();
		example.createCriteria().andIsVisableEqualTo((byte)1);
		List<SystemConfig> list = systemConfigMapper.selectByExample(example);
		List<SystemConfigDTO> configDTOs = new ArrayList<>();
		for(SystemConfig config : list)
		{
			SystemConfigDTO configDTO = new SystemConfigDTO();
			BeanUtils.copyProperties(config, configDTO);
			configDTOs.add(configDTO);
		}
		return configDTOs;
		
	}
	
	public void editConfig(SystemConfigDTO configDTO)
	{
		SystemConfig config = new SystemConfig();
		BeanUtils.copyProperties(configDTO, config);
		systemConfigMapper.updateByPrimaryKeySelective(config);
	}
	
	public SystemConfigDTO detail(int id)
	{
		SystemConfig config = systemConfigMapper.selectByPrimaryKey(id);
		SystemConfigDTO configDTO = new SystemConfigDTO();
		BeanUtils.copyProperties(config, configDTO);
		return configDTO;
	}
}
