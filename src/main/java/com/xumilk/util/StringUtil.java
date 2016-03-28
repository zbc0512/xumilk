package com.xumilk.util;

public class StringUtil {
    /**
     * 判断字符非空
     * 
     * @param
     * @return
     */
    public static boolean isNotEmpty(String str) {
        return null != str && !str.trim().equals("") && !str.trim().equals("null")
                && !str.trim().equals("undefined");
    }
}
