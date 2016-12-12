package com.csy.message.manager;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csy.dao.NotifyReceiverMapperExt;
import com.csy.message.domain.dto.NotifyDTO;
import com.csy.message.domain.dto.NotifyReceiverDTO;
import com.csy.message.domain.dto.NotifyReceiverSearchDTO;
import com.csy.model.Notify;
import com.csy.model.NotifyReceiver;
import com.csy.model.NotifyReceiverExample;
import com.csy.model.base.DateUtil;
import com.csy.model.base.Pagination;
import com.csy.model.base.StringUtils;
@Service
public class MessageManager {
	@Autowired
	private NotifyReceiverMapperExt notifyReceiverMapperExt;
	
	public Pagination<NotifyReceiverDTO> pageSearch(NotifyReceiverSearchDTO searchDTO)
	{
		Pagination<NotifyReceiverDTO> pagination = new Pagination<NotifyReceiverDTO>(searchDTO.getCurrentPage());
		NotifyReceiverExample example = bulidExample(searchDTO);
		long count = notifyReceiverMapperExt.countByExample(example);
		pagination.setTotalCount((int)count);
		if(count>0)
		{
			List<NotifyReceiver> newsList= notifyReceiverMapperExt.selectByExampleByPage(example, pagination.getOffset(), pagination.getPageSize());
			List<NotifyReceiverDTO> retList = new ArrayList<NotifyReceiverDTO>(newsList.size());
			for (NotifyReceiver result : newsList) {
				NotifyReceiverDTO missionDTO = new NotifyReceiverDTO();
				BeanUtils.copyProperties(result, missionDTO);
				retList.add(missionDTO);
//				missionDTO.setCreateDate(DateUtil.toLocaleString(result.getCreateTm(), "YYYY-MM-dd"));
			}
			pagination.setList(retList);
		}
		 
		return pagination;
	}
	
	public void insertNodify(NotifyReceiverDTO notifyReceiverDTO)
	{
		NotifyReceiver notify = new NotifyReceiver();
		BeanUtils.copyProperties(notifyReceiverDTO, notify);
		notifyReceiverMapperExt.insert(notify);
	}
	
	private NotifyReceiverExample bulidExample(NotifyReceiverSearchDTO searchDTO) {
		NotifyReceiverExample example = new NotifyReceiverExample();
		NotifyReceiverExample.Criteria criteria = example.createCriteria();
		if(StringUtils.isNotEmpty(searchDTO.getTargetName()))
		{
			criteria.andTargetNameLike("%"+searchDTO.getTargetName()+"%");
		}
		if(searchDTO.getTargetId()!=null)
		{
			criteria.andTargetIdEqualTo(searchDTO.getTargetId());
		}
		if(searchDTO.getStatus()!=null)
		{
			criteria.andStatusEqualTo(searchDTO.getStatus());
		}
		if(StringUtils.isNotEmpty(searchDTO.getBeginTm()))
		{
			criteria.andSendTmGreaterThan(DateUtil.parse(searchDTO.getBeginTm(),DateUtil.DEFAULT_DATE_FORMAT));
		}
		if(StringUtils.isNotEmpty(searchDTO.getEndTm()))
		{
			criteria.andSendTmLessThan(DateUtil.parse(searchDTO.getEndTm(),DateUtil.DEFAULT_DATE_FORMAT));
		}
		example.setOrderByClause("send_tm desc");
		return example;
	}
}
