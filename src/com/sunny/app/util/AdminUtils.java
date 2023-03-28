package com.sunny.app.util;

import java.security.MessageDigest;

import javax.servlet.http.HttpServletRequest;

public class AdminUtils {
    public static String pwSha256(String adminPW) {
    	String encrypted = "";
    	try {
            MessageDigest sha256 = MessageDigest.getInstance("SHA-256");
            sha256.update(adminPW.getBytes());
            byte[] hash = sha256.digest();
            encrypted = bytesToHex(hash);
            System.out.println("Encrypted value: " + encrypted);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	System.out.println(encrypted);
    	return encrypted;
	}

	private static String bytesToHex(byte[] bytes) {
        StringBuilder hex = new StringBuilder();
        for (byte b : bytes) {
            hex.append(String.format("%02x", b));
        }
        return hex.toString();
    }

	public static boolean sessionCheck(HttpServletRequest req) {
		
		return req.getSession().getAttribute("adminNumber") == null ? false : true;
	}
}