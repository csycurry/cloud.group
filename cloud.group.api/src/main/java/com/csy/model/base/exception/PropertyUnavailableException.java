package com.csy.model.base.exception;

/**
 * Created by leen on 4/14/16.
 */
public class PropertyUnavailableException extends Exception {

    public PropertyUnavailableException(String property) {
        super(property);
    }

}
