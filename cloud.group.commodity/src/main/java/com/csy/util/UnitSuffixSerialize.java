/**
 * 
 */
package com.csy.util;

import java.io.IOException;

import org.apache.commons.lang.StringUtils;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.std.NumberSerializer;

/**
 * @author Zhu
 * @date 2015-12-8 涓嬪崍3:39:20
 * @description
 */
public class UnitSuffixSerialize extends JsonSerializer<Number> implements
		ContextualSerializer {

	protected String suffix;

	protected String prefix;

	protected NumberSerializer numberSerializer = new NumberSerializer(
			Number.class);

	@Override
	public void serialize(Number value, JsonGenerator jgen,
			SerializerProvider serializers) throws IOException,
			JsonProcessingException {
		if (StringUtils.isBlank(prefix) && StringUtils.isBlank(suffix)) {
			numberSerializer.serialize(value, jgen, serializers);
		} else if (StringUtils.isNotBlank(prefix)) {
			jgen.writeString(prefix + value);
		} else if (StringUtils.isNotBlank(suffix)) {
			jgen.writeString(value + suffix);
		} else {
			jgen.writeString(suffix + value + suffix);
		}
	}

	/**
	 * 
	 */
	public UnitSuffixSerialize() {
	}

	/**
	 * 
	 */
	public UnitSuffixSerialize(String prefix, String suffix) {
		this.prefix = prefix;
		this.suffix = suffix;
	}
	
	public UnitSuffixSerialize getSerializer(String p, String s, String t) {
		if ("money".equals(t)) {
			return new SignedMoneySerialize(p, s);
		}
		return new UnitSuffixSerialize(p, s);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.fasterxml.jackson.databind.ser.ContextualSerializer#createContextual
	 * (com.fasterxml.jackson.databind.SerializerProvider,
	 * com.fasterxml.jackson.databind.BeanProperty)
	 */
	@Override
	public JsonSerializer<?> createContextual(SerializerProvider prov,
			BeanProperty property) throws JsonMappingException {

		if (property != null) {
			JsonFormat.Value format = prov.getAnnotationIntrospector()
					.findFormat((Annotated) property.getMember());
			if (format != null) {
				if (!format.hasPattern()) {
					return new UnitSuffixSerialize(null, null);
				}
				String pattern = format.getPattern();
				String[] arr = pattern.split(",");
				if (arr.length < 1) {
					return new UnitSuffixSerialize(null, null);
				}
				String p = null;
				String s = null;
				String t = null;
				for (String string : arr) {
					String[] split = string.split("=");
					if (split.length < 2) {
						continue;
					}
					if ("p".equalsIgnoreCase(split[0])) {
						p = split[1];
					} else if ("s".equalsIgnoreCase(split[0])) {
						s = split[1];
					} else if ("t".equalsIgnoreCase(split[0])) {
						t = split[1];
					}
				}
				return getSerializer(p, s, t);
			}
		}
		return this;
	}
}
