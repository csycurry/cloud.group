package com.csy.common.redis.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.csy.common.redis.service.RedisService;

/**
 * 缓存注解
 * @author licf
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Cache {
	boolean notCacheNull() default false;
	int expire() default RedisService.EXPIRE_TIME_ONEDAY ;
	boolean requireNew() default false;
}
