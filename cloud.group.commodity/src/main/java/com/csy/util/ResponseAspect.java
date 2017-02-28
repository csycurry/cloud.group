package com.csy.util;

import java.io.IOException;
import java.rmi.UnexpectedException;
import java.util.Enumeration;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang.StringUtils;
import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpOutputMessage;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageNotWritableException;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.http.server.ServletServerHttpResponse;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.csy.exception.BusinessException;
import com.google.common.base.Strings;

/**
 * @author Zhu
 * @date 2015-5-18
 * @version 0.0.1
 * @description : { "status": 1, "data": data, "msg": ""
 *              } 
 */
@Order(100)
public class ResponseAspect {

	@Resource
	private MappingJackson2HttpMessageConverter converter;

	@Resource
	private JsonObjectMapper jsonObjectMapper;

	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	private final String FAIL_MSG = "操作失败";
	
	protected static final String reqParamsStringKey = "reqParamsString";
	
	protected static final String reqStartMsecsKey = "reqStartMsecs";

	/**
	 * ResponseBody
	 * 
	 * @author Zhu
	 * @date 2015-5-18
	 * @description
	 */
//	@Pointcut("execution(* com.dianwoba.redcliff.*.web.controller..*.*(..)) && @annotation(com.csy.util.ResponseJson)")
	public void responseBodyPointCut() {

	}

	/**
	 * 
	 * 
	 * @param request
	 */
//	@Before(value = "responseBodyPointCut()")
	public void before(JoinPoint jp) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
		request.setAttribute(reqStartMsecsKey, System.currentTimeMillis());
		
		String uri = request.getRequestURI();

		StringBuilder params = new StringBuilder(uri+ " " + request.getMethod()
				+ " with parameters [");
		@SuppressWarnings("rawtypes")
		Enumeration e = request.getParameterNames();
		while (e.hasMoreElements()) {
			String p = (String) e.nextElement();
			params.append(p).append("=").append(request.getParameter(p))
					.append(",");
		}
		params.append("]");
		
		request.setAttribute(reqParamsStringKey, params.toString());
	}

	/**
	 * 
	 * 
	 * @param returnValue
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws HttpMessageNotWritableException
	 */
//	@AfterReturning(value = "responseBodyPointCut()", returning = "ret")
	public void after(Object ret) throws HttpMessageNotWritableException,
			IOException {

		HttpServletResponse response = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getResponse();
		HttpOutputMessage outputMessage = new ServletServerHttpResponse(response);
		converter.write(ret, MediaType.APPLICATION_JSON, outputMessage);
		
		String returnValue = jsonObjectMapper.writeValueAsString(ret);
		int len = StringUtils.length(returnValue);
		returnValue = len > 1000 ? (StringUtils.substring(returnValue, 0, 1000) + "...}") : returnValue;

		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
		complete(returnValue, request, response);

		shutdownResponse(response);
	}

	/**
	 * 
	 * 
	 * @param returnValue
	 * @param request
	 * @param response
	 */
	protected void complete(String returnValue, HttpServletRequest request,
			HttpServletResponse response) {
		long reqStartMsecs = (Long) request.getAttribute(reqStartMsecsKey);
	}

	/**
	 * 
	 * 
	 * @author Zhu
	 * @date 2015-5-18
	 * @description
	 * @param jp
	 * @param error
	 * @throws Throwable
	 */
//	@AfterThrowing(pointcut = "responseBodyPointCut()", throwing = "error")
	public void exception(JoinPoint jp, Throwable error) throws Throwable {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
		ResponseJsonBean responseBase = new ResponseJsonBean();
		responseBase.setStatus(0);
		
		String reqParamsString = (String) request.getAttribute(reqParamsStringKey);
		String prefix = (StringUtils.isBlank(reqParamsString) ? "" : reqParamsString + ",method ") + jp.getSignature().getName();
		long reqStartMsecs = (Long) request.getAttribute(reqStartMsecsKey);
		long cost = System.currentTimeMillis() - reqStartMsecs;
        Throwable rootCause = error.getCause();
        if (error instanceof BusinessException || (rootCause != null && rootCause instanceof BusinessException)) {
            logger.warn(prefix
                    + " throws BusniessException,cost(ms):" + cost + ",traceId:" + Strings.nullToEmpty("1"), error);
            responseBase
					.setMsg(StringUtils.isBlank(error.getMessage()) ? FAIL_MSG
							: error.getMessage());
			BusinessException businessException = (BusinessException) error;
			responseBase.setErrorCode(businessException.getErrorCode());
			responseBase.setExtraMsg(businessException.getExtraMsg());
		} else if (error instanceof UnexpectedException) {
			logger.error(prefix
                    + " throws UnexpectedException!,cost(ms):" + cost + ",traceId:" + Strings.nullToEmpty("1"), error);
            responseBase.setMsg(FAIL_MSG);
		} else {
            logger.error(prefix + " occors error,cost(ms):" + cost + ",traceId:" + Strings.nullToEmpty("1"), error);
            responseBase.setMsg(FAIL_MSG);
		}
		HttpServletResponse response = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getResponse();
		HttpOutputMessage outputMessage = new ServletServerHttpResponse(
				response);
		converter
				.write(responseBase, MediaType.APPLICATION_JSON, outputMessage);
		complete(
				String.format("exception:{msg:%s,errorCode:%s}",
						responseBase.getMsg(), responseBase.getErrorCode()),
				request, response);
		shutdownResponse(response);
	}

	protected void shutdownResponse(HttpServletResponse response)
			throws IOException {
		response.getOutputStream().close();
	}

}
