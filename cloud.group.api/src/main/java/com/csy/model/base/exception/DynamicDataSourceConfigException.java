package com.csy.model.base.exception;

public class DynamicDataSourceConfigException
extends Exception
{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public DynamicDataSourceConfigException(String dbKey, String message)
{
  super(message + ". dbKey: '" + dbKey + "'");
}

public DynamicDataSourceConfigException(String dbKey, Throwable cause)
{
  super("dbKey: '" + dbKey + "'", cause);
}
}
