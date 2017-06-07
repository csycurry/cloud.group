package com.csy.order.task;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.csy.commodity.manager.CommodityManager;
import com.csy.model.Commodity;
import com.csy.taobao.api.TbkItemCouponGetRequest;
import com.csy.taobao.api.TbkItemCouponGetResponse;
import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;

@Component
public class CouponTask {
	@Resource
	private CommodityManager commodityManager;
	
	private final static String url = "http://gw.api.taobao.com/router/rest";
	private final static String appkey = "";
	private final static String secret = "";
	public void excute(){
		List<Commodity> list =  commodityManager.getActicityCommodity();
		if(list == null){
			return ;
		}
		
		for(Commodity commodity:list){
			TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
			TbkItemCouponGetRequest req = new TbkItemCouponGetRequest();
			req.setPageSize(1L);
			req.setPageNo(1L);
			req.setPid(commodity.getCouponLink().substring(commodity.getCouponLink().indexOf("&pid="), commodity.getCouponLink().indexOf("&af=")));
			TbkItemCouponGetResponse rsp = null;
			try {
				rsp = client.execute(req);
			} catch (ApiException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(rsp.getBody());
		}
	}
}
