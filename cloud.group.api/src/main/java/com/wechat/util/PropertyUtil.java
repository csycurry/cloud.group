package com.wechat.util;

import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;

public class PropertyUtil extends PropertyPlaceholderConfigurer {
	
	private static final Map<String, String> propertyMap = new ConcurrentHashMap<String, String>();

	@Override
	protected void processProperties(ConfigurableListableBeanFactory beanFactoryToProcess, Properties props)
			throws BeansException {
		super.processProperties(beanFactoryToProcess, props);
		for(Object key: props.keySet()) {
			String keyStr = key.toString();
			propertyMap.put(keyStr, props.getProperty(keyStr));
		}
	}
	
	public static String getProperty(String key) {
		return propertyMap.get(key);
	}
}
