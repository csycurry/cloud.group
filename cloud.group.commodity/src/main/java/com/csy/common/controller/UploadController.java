package com.csy.common.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.csy.model.base.DateUtil;
import com.csy.util.ResponseJson;

/**
 * 上传
 * @author chensy
 */
@Controller
public class UploadController {

	private Logger logger = LoggerFactory.getLogger(getClass());
	private static final String SEPARATOR = "/";

	@Value("${app.code}")
	private String appCode;
	@Value("${image.server.directory}")
	private String imageServerDirectory;

	@Value("${image.server.domain}")
	private String imageServerDomain;
	
	/**
	 * 上传文件
	 * @param file
	 * @return
	 * @throws IOException
	 * @throws IllegalStateException
	 */
	@RequestMapping(value = "/common/kindeditor/apis/image/upload", method = RequestMethod.POST)
	@ResponseJson
	public @ResponseBody String upload(@RequestParam("file") MultipartFile file) {
		if(file==null)
		{
			return null;
		}
		//app.code
		String folderPath = getImageDiskPath(imageServerDirectory, appCode);
		File folder = new File(folderPath);
		if (!folder.exists()) {
			folder.mkdirs();
		}
		String fileName=UUID.randomUUID().toString()+"."+FilenameUtils.getExtension(file.getOriginalFilename());
		File dest = new File(folder, fileName);
		try {
			
			file.transferTo(dest);
			logger.info("UPLOAD image complete, the imagePath is {}", getImageHttpUrl(imageServerDomain,  dest.getAbsolutePath()));
			return getImageHttpUrl(imageServerDomain,  dest.getAbsolutePath());
			
		} catch (Exception e) {
			return e.getMessage();
		}
	}

	private String getImageHttpUrl(String imageServerDomain, String path) {
		StringBuffer sb = new StringBuffer(imageServerDomain
				+ (StringUtils.endsWith(imageServerDomain, "/") ? "" : "/"));
		sb.append(path.substring(path.indexOf(appCode)));

		return sb.toString();
	}
	/**
	 * @param imageServerDirectory2
	 * @param appCode2
	 * @return
	 */
	private String getImageDiskPath(String imageServerDirectory, String appCode) {
		Date date = new Date();
		StringBuilder builder = new StringBuilder();
		builder.append(imageServerDirectory).append(SEPARATOR).append(appCode).append(SEPARATOR)
		.append(DateUtil.getYear(date)).append(SEPARATOR)
		.append(DateUtil.getMonth(date)).append(SEPARATOR)
		.append(DateUtil.getDay(date));

		return builder.toString();
	}

}
