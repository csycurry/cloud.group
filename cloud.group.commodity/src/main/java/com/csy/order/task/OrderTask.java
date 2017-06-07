package com.csy.order.task;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.csy.model.Rebate;
import com.csy.model.base.DateUtil;
import com.csy.rebate.domain.emus.RebateStatusEn;
import com.csy.rebate.manager.RebateManager;
import com.csy.taobao.api.TaobaokeOrderGetRequest;
import com.csy.taobao.api.domain.TaobaokeOrder;
import com.csy.taobao.api.domain.TaobaokeOrderGetResponse;
import com.csy.taobao.api.domain.TaobaokeOrderMember;
import com.csy.user.domain.dto.UserDTO;
import com.csy.user.manager.UserManager;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.internal.toplink.embedded.websocket.util.StringUtil;

@Component
public class OrderTask {
	private static final Logger logger = LoggerFactory.getLogger(OrderTask.class);
	@Resource
	private RebateManager rebateManager;
	@Resource
	private UserManager userManager;
	
	public void getTBKOrder(String url, String appkey, String secret, String date) throws Exception {
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		TaobaokeOrderGetRequest req = new TaobaokeOrderGetRequest();
		req.setFields(
				"tb_trade_parent_id,tb_trade_id,num_iid,item_title,item_num,price,pay_price,seller_nick,seller_shop_title,commission,commission_rate,unid,create_time,earning_time,tk3rd_pub_id,tk3rd_site_id,tk3rd_adzone_id");
		req.setStartTime(DateUtil.add(DateUtil.getCurrentTime(), Calendar.MINUTE, -5));
		req.setSpan(300L);
		req.setPageSize(100L);
		req.setTkStatus(1L);
		req.setOrderQueryType("settle_time");

		logger.info("开始查询日期为:" + date + "的订单!");
		long pageNo = 1L;
		TaobaokeOrderGetResponse rsp = null;
		while (true) {
			req.setPageNo(pageNo);// 当前页数.只能获取1-499页数据.
			rsp = client.execute(req);
			System.out.println(rsp.getBody());
			if (rsp.getErrorCode() != null) {
				List<TaobaokeOrderMember> orders = rsp.getTaobaokeOrder().getTaobaokeOrderMembers();
				if (orders == null || orders.size() == 0) {
					logger.info("未找到订单，退出......");
					break;
				}
				// if (orders != null && orders.size() > 0) {
				for (TaobaokeOrderMember order : orders) {
					 //查询系统中是否已经有此订单商品，如果有，跳过，如果没有，则插入一条新记录
					 String proCode = String.valueOf(order.getNumIid());//商品ID
					 String orderId = String.valueOf(order.getTradeId());//交易号，即定单
					 long count = rebateManager.countOrder(orderId);
					 if(count>0)continue;//已经有则不插入
					 Rebate rebate = new Rebate();
					 rebate.setMissionName(order.getItemTitle());
					 rebate.setEarnings(new BigDecimal(order.getCommission())); 
					 rebate.setImportDate(order.getEarningTime());
					 UserDTO userDTO = userManager.findDetail(order.getTk3rdPubId());
					 rebate.setUserId(userDTO.getId());
					 rebate.setUserCode(userDTO.getUserCode());
					 rebate.setMissionId(order.getItemNum());
					 rebate.setStatus(RebateStatusEn.UNSETTLE.getCode());
//					 orderEnt.setCreateUid("admin");
//					 orderEnt.setUpdateUid("admin");
//					 orderEnt.setProCode(proCode);
//					 orderEnt.setOrderNo(orderId);
//					 logger.info("支付时间："+order.getPayTime().toString());
//					 String dt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
//					 .format(order.getPayTime());
//					 orderEnt.setOrderDt(dt);//日期
//					 orderEnt.setStoreName(order.getSellerNick());//卖家昵称
//					 orderEnt.setStoreName2(order.getShopTitle());//店铺名称
//					 orderEnt.setYongjinRate(order.getCommissionRate());//佣金比率
//					 orderEnt.setYongjinAmt(new
//					 Double(order.getCommission()));// 佣金金额
//					 orderEnt.setPurQty(new
//					 Double(String.valueOf(order.getItemNum())));// 购买数量
//					 orderEnt.setProName(order.getItemTitle());// 商品标题
//					 orderEnt.setUnitPrice(new Double(order.getPayPrice()));//成交价格
//					 logger.info("实际成交额: ");
//					 logger.info(order.getRealPayFee());
//					 orderEnt.setOrderAmt(new
//					 Double(order.getRealPayFee()));//实际成交
//					 //orderEnt.setOrderStatus(order.get)
					 rebateManager.inserBatch(rebate, order.getItemNum(), "system");
				}
				pageNo++;
				req.setPageNo(pageNo);
			} else {
				logger.info("淘宝客获取订单，响应为空.....");
				break; // 如果未获得相应,退出()
			}
		}

	}
	public static void main(String[] args) throws Exception {
        // TOP服务地址，正式环境需要设置为http://gw.api.taobao.com/router/rest
        String serverUrl = "http://gw.api.tbsandbox.com/router/rest";
        String appKey = "test"; // 可替换为您的沙箱环境应用的AppKey
        String appSecret = "test"; // 可替换为您的沙箱环境应用的AppSecret
        String sessionKey = "test"; // 必须替换为沙箱账号授权得到的真实有效SessionKey
 
//        TaobaoClient client = new DefaultTaobaoClient(serverUrl, appKey, appSecret);
//        ItemSellerGetRequest req = new ItemSellerGetRequest();
//        req.setFields("num_iid,title,nick,price,num");
//        req.setNumIid(123456789L);
//        ItemSellerGetResponse rsp = client.execute(req, sessionKey);
//        System.out.println(rsp.getBody());
//        if (rsp.isSuccess()) {
//            System.out.println(rsp.getItem().getTitle());
//        }
    }
}
