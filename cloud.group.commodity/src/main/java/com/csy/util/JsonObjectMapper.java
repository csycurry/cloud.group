package com.csy.util;

import java.io.IOException;
import java.text.SimpleDateFormat;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;

/**
 * Json
 * 
 * @author Zhu
 * @date 2015-5-14
 * @version 0.0.1
 * @description
 */
public class JsonObjectMapper extends ObjectMapper {

	private static final long serialVersionUID = 4101422916858447072L;

	/**
	 * Json
	 */
	public JsonObjectMapper() {
		super();

		this.getSerializerProvider().setNullValueSerializer(
				new JsonSerializer<Object>() {
					@Override
					public void serialize(Object value,
							JsonGenerator generator, SerializerProvider provider)
							throws IOException, JsonProcessingException {
						generator.writeString("");
					}
				});
		this.setDateFormat(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));

		SimpleModule module = new SimpleModule("unitSuffixSerialize",
				Version.unknownVersion());
		module.addSerializer(Number.class, new UnitSuffixSerialize());
		module.addSerializer(int.class, new UnitSuffixSerialize());
		this.registerModule(module);
		
		this.setFilters(new SimpleFilterProvider().setFailOnUnknownId(false));
	}
}
