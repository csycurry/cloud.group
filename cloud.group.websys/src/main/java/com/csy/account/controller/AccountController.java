package com.csy.account.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.csy.account.domain.dto.UserAccountDTO;
import com.csy.account.domain.dto.UserAccountSearchDTO;
import com.csy.account.domain.emus.AccountTypeEn;
import com.csy.account.manager.AccountManager;
import com.csy.model.base.Pagination;

@Controller
public class AccountController {
	@Autowired
	private AccountManager accountManager;
	
	@RequestMapping(value="/backstage/account/page")
	public ModelAndView pageSearchByCash(UserAccountSearchDTO searchDTO,int page)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/account/accountList");
		Map<String, Object> map= modelAndView.getModel();
		searchDTO.setCurrentPage(page);
		searchDTO.setType(AccountTypeEn.OUT.getCode());
		Pagination<UserAccountDTO> pagination =  accountManager.pageSearch(searchDTO);
		map.put("list", pagination.getList());
		map.put("userNum", pagination.getTotalCount());
		map.put("u", searchDTO);
		map.put("currentPage", pagination.getCurrentPageIndex());
		map.put("pageNum", pagination.getCurrentPage());
		return modelAndView;
	}
}
