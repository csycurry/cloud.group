package com.csy.auth.manager;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.auth.domain.dto.AuthorityDTO;
import com.csy.auth.domain.dto.AuthorityExtendDTO;
import com.csy.auth.domain.emus.AutoLevelEn;
import com.csy.dao.AuthorityMapper;
import com.csy.dao.RoleAuthMapper;
import com.csy.dao.RoleMapper;
import com.csy.model.Authority;
import com.csy.model.AuthorityExample;
import com.csy.model.RoleAuth;
import com.csy.model.RoleAuthExample;

@Service
public class AuthManager {
	@Autowired
	private RoleMapper roleMapper;
	@Autowired
	private RoleAuthMapper roleAuthMapper;
	
	@Autowired
	private AuthorityMapper authorityMapper;
	
	public List<AuthorityExtendDTO> getAuth(int roleId)
	{
		List<AuthorityExtendDTO> list = new ArrayList<>();
		AuthorityExample example = createAuthorityExample(getAuthId(roleId));
		List<Authority> authorities = authorityMapper.selectByExample(example);
		List<AuthorityDTO> authorityDTOs = new ArrayList<>();
		for(Authority authority : authorities)
		{
			AuthorityDTO authorityDTO = new AuthorityDTO();
			BeanUtils.copyProperties(authority, authorityDTO);
			authorityDTOs.add(authorityDTO);
			
		}
		list = buildExtend(authorityDTOs);
		return list;
	}
	
	public List<Integer> getAuthId(Integer roleId)
	{
		RoleAuthExample authExample = new RoleAuthExample();
		authExample.createCriteria().andRoleidEqualTo(roleId);
		List<RoleAuth> list = roleAuthMapper.selectByExample(authExample);
		List<Integer> ids = new ArrayList<>();
		for(RoleAuth auth:list)
		{
			ids.add(auth.getAuthid());
		}
		return ids;
	}
	
	private AuthorityExample createAuthorityExample(List<Integer> ids)
	{
		AuthorityExample example = new AuthorityExample();
		AuthorityExample.Criteria criteria = example.createCriteria();
		if(ids.size()>0)
			criteria.andIdIn(ids);
		example.setOrderByClause("id asc");
		return example;
	}
	
	private List<AuthorityExtendDTO> buildExtend(List<AuthorityDTO> list)
	{
		List<AuthorityExtendDTO> extendDTOs = new ArrayList<>(); 
		if(list.size()>0)
		{
			for(AuthorityDTO authorityDTO:list)
			{
				if(authorityDTO.getLevel().equals(AutoLevelEn.TOP.getCode()))
				{
					AuthorityExtendDTO authorityExtendDTO = new AuthorityExtendDTO();
					authorityExtendDTO.setFuncDTO(new ArrayList<AuthorityDTO>());
					authorityExtendDTO.setSourceDTO(new ArrayList<AuthorityDTO>());
					buildSubExtend(authorityExtendDTO,list);
					extendDTOs.add(authorityExtendDTO);
					list.remove(authorityDTO);
				}
			}
		}
		
		return extendDTOs;
	}
	
	private void buildSubExtend(AuthorityExtendDTO authorityExtendDTO,List<AuthorityDTO> list)
	{
		for(AuthorityDTO authorityDTO :list)
		{
			if(authorityDTO.getParent().equals(authorityExtendDTO.getAuthorityDTO().getId()))
			{
				if(authorityDTO.getLevel().equals(AutoLevelEn.SECOND.getCode()))
				{
					authorityExtendDTO.getSourceDTO().add(authorityDTO);
				}
				else
				{
					authorityExtendDTO.getFuncDTO().add(authorityDTO);
				}
				list.remove(authorityDTO);
			}
		}
	}
	
}
