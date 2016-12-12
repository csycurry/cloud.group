package com.csy.content;

/**
 * 常量定义
 * 
 */
public class Constant
{

    /**
     * 验证码自然过期时间
     */
    public static final Integer CAPTCHA_EXPIRE_MINIUTE = 30;
    
    /**
     * 验证码在自然过期时间内最多获取的次数
     */
    public static final Integer CAPTCHA_MAX_TIMES = 4;

    public static final char[] RANDOM_FILTER_CHARS = {'I', 'L', 'O', '0', '1'};
    
    /**
     * 交接延迟3分钟
     */
    public static final int HANDOVER_DELAY = 3;
    
    /**
     * 判断迟到时间
     */
    public static final int JUDGE_DELAY_TIME = 10 * 60 * 1000;
    
    /**
     * @author Zhu
     * @date 2015-6-12
     * @version 0.0.1
     * @description
     */
      
    /**
     * 最大置顶新闻条数
     */
    public static final Integer MAX_TOP_NEWS = 5;
    
}
