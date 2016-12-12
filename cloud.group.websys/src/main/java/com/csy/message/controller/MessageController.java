package com.csy.message.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.csy.message.domain.dto.NotifyReceiverDTO;
import com.csy.message.domain.dto.NotifyReceiverSearchDTO;
import com.csy.message.manager.MessageManager;
import com.csy.model.base.Pagination;
@Controller
public class MessageController {
	@Autowired
	private MessageManager messageManager;
	
	@RequestMapping(value="/backstage/message/page")
	public ModelAndView pageSearch(NotifyReceiverSearchDTO searchDTO,int page)
	{
		ModelAndView modelAndView = new ModelAndView("/manager/message/messageList");
		Map<String, Object> map= modelAndView.getModel();
		searchDTO.setCurrentPage(page);
		Pagination<NotifyReceiverDTO> pagination = messageManager.pageSearch(searchDTO);
		map.put("list", pagination.getList());
		map.put("userNum", pagination.getTotalCount());
		map.put("u", searchDTO);
		map.put("currentPage", pagination.getCurrentPageIndex());
		map.put("pageNum", pagination.getCurrentPage());
		return modelAndView;
	}
}
