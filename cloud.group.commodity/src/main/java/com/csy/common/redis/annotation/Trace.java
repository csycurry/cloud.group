package com.csy.common.redis.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import static java.lang.annotation.ElementType.*;

/**
 * 链路监控会采集有这个注解的方法的执行时间
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(value = {METHOD})
public @interface Trace {
}
