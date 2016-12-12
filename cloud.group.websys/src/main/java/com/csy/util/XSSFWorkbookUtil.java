package com.csy.util;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFDataFormat;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.csy.model.base.DateUtil;


public class XSSFWorkbookUtil {

	public static enum Head {

		TASK_TEMP(new String[] { "城市(必填 如:杭州市)", "任务内容(必填:含号码)", "任务要求时间(必填)",
				"任务备注(选填)" });
		String[] head;

		Head(String[] head) {
			this.head = head;
		}

		public String[] getHead() {
			return head;
		}
	}

	public final static HSSFWorkbook createHSSFWorkbook(InputStream inputStream) throws IOException {
		return new HSSFWorkbook(inputStream);
	}
 
	
	public static XSSFWorkbook writerBody(Head head,String[][] bodys){
		XSSFWorkbook wb = createSimpleWorkBook(head);
		XSSFSheet sheet = wb.getSheetAt(0);
		XSSFCellStyle bodyStyle = buildRowBody(wb);
		for (int i = 0; i < bodys.length; i++) {
			XSSFRow row = sheet.createRow(i+1);
			for (int j = 0; j < bodys[i].length; j++) {
				XSSFCell cell = row.createCell(j);
				cell.setCellValue(bodys[i][j]);
				cell.setCellStyle(bodyStyle);
			}
		}
		return wb;
	}
	
	public final static String[][] readHssWorkBook(InputStream inputStream,int startRow) throws IOException {
		HSSFWorkbook wb = new HSSFWorkbook(inputStream);
		HSSFSheet sheet = wb.getSheetAt(0);
		String[][] bodys = new String[sheet.getLastRowNum() - startRow + 1][sheet.getRow(startRow).getLastCellNum()];
		for (int j = 0; j < (sheet.getLastRowNum() - startRow + 1); j++) {
			HSSFRow row = sheet.getRow(j+startRow);
			String[] content = new String[sheet.getRow(0).getLastCellNum()];
			for (int i = 0; i < sheet.getRow(j+startRow).getLastCellNum(); i++) {
				 HSSFCell cell = row.getCell(i);
				 String cellvalue = "";
				 try {
					 if(cell != null) {
						if(cell.getCellType() == HSSFCell.CELL_TYPE_NUMERIC && org.apache.poi.ss.usermodel.DateUtil.isCellDateFormatted(cell)) {
							cellvalue = DateUtil.toLocaleString(cell.getDateCellValue(),DateUtil.YYYY_MM_DD_HH_DD_SS);
						}else{
							cell.setCellType(HSSFCell.CELL_TYPE_STRING);
							cellvalue = cell.getRichStringCellValue().toString();
						}
					 } 
				 } catch (Exception e) {
						e.printStackTrace();
				 }
				 content[i] = StringUtils.trim(cellvalue);
			}
			bodys[j] = content;
		}
		wb.close();
		return bodys;
	}
	 
	public final static String[][] readWorkBook(InputStream inputStream,int startRow) throws IOException {
		XSSFWorkbook wb = new XSSFWorkbook(inputStream);
		XSSFSheet sheet = wb.getSheetAt(0);
		String[][] bodys = new String[sheet.getLastRowNum() - startRow + 1][sheet.getRow(startRow).getLastCellNum()];
		for (int j = 0; j < (sheet.getLastRowNum() - startRow + 1); j++) {
			XSSFRow row = sheet.getRow(j+startRow);
			String[] content = new String[sheet.getRow(0).getLastCellNum()];
			for (int i = 0; i < sheet.getRow(j+startRow).getLastCellNum(); i++) {
				 XSSFCell cell = row.getCell(i);
				 String cellvalue = "";
				 try {
					 if(cell != null) {
						if(cell.getCellType() == XSSFCell.CELL_TYPE_NUMERIC && org.apache.poi.ss.usermodel.DateUtil.isCellDateFormatted(cell)) {
							cellvalue = DateUtil.toLocaleString(cell.getDateCellValue(),DateUtil.YYYY_MM_DD_HH_DD_SS);
						}else{
							cell.setCellType(XSSFCell.CELL_TYPE_STRING);
							cellvalue = cell.getRichStringCellValue().toString();
						}
					 } 
				 } catch (Exception e) {
						e.printStackTrace();
				 }
				 content[i] = StringUtils.trim(cellvalue);
			}
			bodys[j] = content;
		}
		wb.close();
		return bodys;
	}

	public final static XSSFWorkbook createSimpleWorkBook(Head head) {
		XSSFWorkbook wb = new XSSFWorkbook();
		XSSFSheet sheet = wb.createSheet();
		XSSFCellStyle columnHeadStyle = buildRowHead(wb);
		// 创建表头
		XSSFRow rowHead = sheet.createRow(0);
		XSSFDataFormat fmt = wb.createDataFormat();

		
//		SFCellStyle cellStyle = demoWorkBook.createCellStyle(); 
//		HSSFDataFormat format= demoWorkBook.createDataFormat(); 
//		cellStyle.setDataFormat(format.getFormat("yyyy年m月d日")); 
//		cell.setCellStyle(cellStyle);
		
		for (int i = 0; i < head.getHead().length; i++) {
			XSSFCell cell = rowHead.createCell(i);
			cell.setCellValue(head.getHead()[i]);
			cell.setCellStyle(columnHeadStyle);
			cell.setCellType(XSSFCell.CELL_TYPE_STRING);
			cell.getCellStyle().setDataFormat(fmt.getFormat(""));
			sheet.setColumnWidth(i, 10000);
		}
		return wb;
	}

	/**
	 * 表头样式
	 * 
	 * @param wb
	 * @return
	 */
	private final static XSSFCellStyle buildRowHead(XSSFWorkbook wb) {
		XSSFCellStyle style = buildBaseStyle(wb);
		style.setFillForegroundColor(HSSFColor.DARK_BLUE.index);// 设置背景色
		style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
		style.setFillForegroundColor(HSSFColor.GREEN.index);
		XSSFFont headfont = wb.createFont();
		headfont.setFontName("黑体");
		headfont.setFontHeightInPoints((short) 11);// 字体大小
		headfont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);// 加粗
		style.setFont(headfont);
		return style;
	}

	/**
	 * 内容样式
	 * 
	 * @param wb
	 * @return
	 */
	private final static XSSFCellStyle buildRowBody(XSSFWorkbook wb) {
		XSSFCellStyle style = buildBaseStyle(wb);
		XSSFFont headfont = wb.createFont();
		headfont.setFontName("黑体");
		headfont.setFontHeightInPoints((short) 9);// 字体大小
		style.setFont(headfont);
		return style;
	}

	/**
	 * 创建基础样式
	 * 
	 * @param wb
	 * @return
	 */
	private final static XSSFCellStyle buildBaseStyle(XSSFWorkbook wb) {
		XSSFCellStyle baseType = wb.createCellStyle();
		baseType.setAlignment(HSSFCellStyle.ALIGN_CENTER);// 左右居中
		baseType.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);// 上下居中
		baseType.setLocked(true);
		baseType.setWrapText(true);
		return baseType;
	}
}
