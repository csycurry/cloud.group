package com.csy.util;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @author Zhu
 * @date 2015-5-18
 * @version 0.0.1
 * @description 自定义序列化的注解
 * 序列化为的格式如下:
 * {
    "status": 1,
    "data": data,
    "msg": ""
	}
	其中被注解的方法只需要关心data的内容即可
 */
@Target({ElementType.TYPE, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface ResponseJson {

}
