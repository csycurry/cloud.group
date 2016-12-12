package com.csy.content;

/**
 * 异常码定义
 * <li>系统异常(00000)：捕获到未知异常和数据库操作异常时使用</li>
 * <li>参数非法(01XXX)：参数明显不合预期，如：参数为NULL、集合为空、数组为空、不在预期值范围(如果只能1或0的情况)等等</li>
 * <li>数据错误(02XXX)：依赖的数据不存在、不正确等等</li>
 * <li>系统调用(03XXX)：调用外部系统时的异常码，如果外部系统有异常码则保留</li>
 * <li>系统调用(04XXX)：权限相关,如:权限不足等</li>
 * 如果需要知道更明确的异常，则需要时再加，并按预留的异常码段添加异常码
 * @author licf
 */
public enum CommonErrorCode {
    /**
     * 系统异常
     */
    GENERIC_ERROR("00000", "系统异常"),
    /**
     * 参数非法
     */
    ILLEGAL_ARGUMENT("01000", "参数非法"),
    /**
     * 文件保存失败
     */
    FILE_SAVE_FAIL("01022", "文件保存失败!"),
    /**
     * 外部系统调用异常
     */
    RPC_CALL_ERROR("03000", "外部系统调用异常"),
    /**
     * 权限不够
     */
    RIGHT_NOT_ENOUGH("04000", "权限不足"),
    /**
     * 数据库操作异常
     */
    DB_OPERATE_ERROR("05000", "数据库操作失败"),
    /**
     * 返回值为空
     */
    RESULT_IS_NULL("05005", "返回值为空"),  
    /**
     * 数据错误
     */
    DATA_ERROR("02000", "数据错误"),
    /**
     * 参数值为空
     */
    PARAM_IS_NULL("08001", "参数值为空"),
    /**
     * 发送mc消息异常
     */
    SEND_SMS_FAIL("11001","发送消息失败"),
    /**
     * 调用查询黑名单接口时参数map为null
     */
    PARAM_MAP_ISNULL("05001", "参数为NULL");
    
    
    private String code;
    private String message;

    private CommonErrorCode(String code, String message) {
        this.code = code;
        this.message = message;
    }

    public String getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}
