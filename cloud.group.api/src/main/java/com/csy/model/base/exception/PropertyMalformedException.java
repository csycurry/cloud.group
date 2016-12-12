package com.csy.model.base.exception;

/**
 * Created by leen on 4/14/16.
 */
public class PropertyMalformedException extends PropertyUnavailableException {

    public PropertyMalformedException(String name, String value) {
        super("name: " + name + ", value: " + value);
    }

}
