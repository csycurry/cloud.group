package com.csy.model.base.exception;

/**
 * Created by leen on 4/14/16.
 */
public final class PropertyNotFoundException extends PropertyUnavailableException {

    public PropertyNotFoundException(String property) {
        super(property);
    }

}
