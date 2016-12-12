package com.csy.auth.domain.dto;

import java.util.List;

public class AuthorityExtendDTO {
	private AuthorityDTO authorityDTO;
	private List<AuthorityDTO> sourceDTO;
	private List<AuthorityDTO> FuncDTO;
	public List<AuthorityDTO> getFuncDTO() {
		return FuncDTO;
	}
	public void setFuncDTO(List<AuthorityDTO> funcDTO) {
		FuncDTO = funcDTO;
	}
	public AuthorityDTO getAuthorityDTO() {
		return authorityDTO;
	}
	public void setAuthorityDTO(AuthorityDTO authorityDTO) {
		this.authorityDTO = authorityDTO;
	}
	public List<AuthorityDTO> getSourceDTO() {
		return sourceDTO;
	}
	public void setSourceDTO(List<AuthorityDTO> sourceDTO) {
		this.sourceDTO = sourceDTO;
	}
	
	
}
