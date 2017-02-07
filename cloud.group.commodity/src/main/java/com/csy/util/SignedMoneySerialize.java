/**
 *
 */
package com.csy.util;

import java.io.IOException;
import java.math.BigDecimal;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.SerializerProvider;

/**
 * @author Zhu
 * @date 2015-11-20
 * @description
 */
public class SignedMoneySerialize extends UnitSuffixSerialize {
	
	/**
	 * 
	 */
	public SignedMoneySerialize(String prefix, String suffix) {
		this.prefix = prefix;
		this.suffix = suffix;
	}

	@Override
	public void serialize(Number value, JsonGenerator gen,
			SerializerProvider serializers) throws IOException,
			JsonProcessingException {

		String valText = null;
		BigDecimal decimalValue = BigDecimal.valueOf(value.doubleValue());
		if (value == null || decimalValue.equals(BigDecimal.ZERO)) {
			valText = "0.0";
		} else {
			String prefix = "";
			if (decimalValue.compareTo(BigDecimal.ZERO) > 0) {
				prefix = "+";
			}
			valText = prefix + decimalValue.setScale(1, BigDecimal.ROUND_FLOOR);
		}
		if(suffix != null){
			gen.writeString(valText + suffix);
		}else{
			gen.writeString(valText);
		}
	}

}
