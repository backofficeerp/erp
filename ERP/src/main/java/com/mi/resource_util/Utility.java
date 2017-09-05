package com.mi.resource_util;

import org.apache.commons.codec.binary.Base64;

import java.io.*;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;

import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class Utility {

	private static byte[] sharedvector = { 0x01, 0x02, 0x03, 0x05, 0x07, 0x0B,
			0x0D, 0x11 };

	public static String EncryptText(String RawText) {
		String EncText = "";
		byte[] keyArray = new byte[24];
		byte[] temporaryKey;
		String key = "developersnotedotcom";
		byte[] toEncryptArray = null;

		try {

			toEncryptArray = RawText.getBytes("UTF-8");
			MessageDigest m = MessageDigest.getInstance("MD5");
			temporaryKey = m.digest(key.getBytes("UTF-8"));

			if (temporaryKey.length < 24) // DESede require 24 byte length key
			{
				int index = 0;
				for (int i = temporaryKey.length; i < 24; i++) {
					keyArray[i] = temporaryKey[index];
				}
			}

			Cipher c = Cipher.getInstance("DESede/CBC/PKCS5Padding");
			c.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(keyArray, "DESede"),
					new IvParameterSpec(sharedvector));
			byte[] encrypted = c.doFinal(toEncryptArray);
			EncText = Base64.encodeBase64String(encrypted);

		} catch (NoSuchAlgorithmException | UnsupportedEncodingException
				| NoSuchPaddingException | InvalidKeyException
				| InvalidAlgorithmParameterException
				| IllegalBlockSizeException | BadPaddingException NoEx) {
			JOptionPane.showMessageDialog(null, NoEx);
		}

		return EncText;
	}

	public static String DecryptText(String EncText) {

		String RawText = "";
		byte[] keyArray = new byte[24];
		byte[] temporaryKey;
		String key = "developersnotedotcom";
		byte[] toEncryptArray = null;

		try {
			MessageDigest m = MessageDigest.getInstance("MD5");
			temporaryKey = m.digest(key.getBytes("UTF-8"));

			if (temporaryKey.length < 24) // DESede require 24 byte length key
			{
				int index = 0;
				for (int i = temporaryKey.length; i < 24; i++) {
					keyArray[i] = temporaryKey[index];
				}
			}

			Cipher c = Cipher.getInstance("DESede/CBC/PKCS5Padding");
			c.init(Cipher.DECRYPT_MODE, new SecretKeySpec(keyArray, "DESede"),
					new IvParameterSpec(sharedvector));
			byte[] decrypted = c.doFinal(Base64.decodeBase64(EncText));

			RawText = new String(decrypted, "UTF-8");
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException
				| NoSuchPaddingException | InvalidKeyException
				| InvalidAlgorithmParameterException
				| IllegalBlockSizeException | BadPaddingException NoEx) {
			JOptionPane.showMessageDialog(null, NoEx);
		}

		return RawText;

	}

	//to get the loggedUser username from session object
	public static String getLoggedUser(HttpServletRequest request) {

		return (String) request.getSession().getAttribute("loggedUser");

	}

	//to get the loggedUser usertype from session object
	public static int getLoggedUserType(HttpServletRequest request) {

		return (Integer) request.getSession().getAttribute("loggedUserType");

	}
	
	//to get loggedUser login Manager Id
	public static int getLoggedLoginManagerId(HttpServletRequest request) {

		return (Integer) request.getSession().getAttribute("loggedLoginManagerId");

	}

}
