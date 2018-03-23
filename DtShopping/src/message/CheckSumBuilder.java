package message;

import java.security.MessageDigest;
/**
 * 短信测试
 * @author 李帅威
 *
 */
public class CheckSumBuilder {
	
	private static final char[] HEX_DIGITS = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};

    public static String getCheckSum(String appSecret, String nonce, String curTime){
        return encode("SHA",appSecret+nonce+curTime);
    }

    private static String encode(String algorithm, String value){
        if(value == null){
            return null;
        }

        try {
            MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
            messageDigest.update(value.getBytes());
            return getFormattedText(messageDigest.digest());
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    private static String getFormattedText(byte[] bytes){
        int length = bytes.length;
        StringBuilder stringBuilder = new StringBuilder(length*2);
        for(int i=0;i<length;i++){
        	stringBuilder.append(HEX_DIGITS[(bytes[i]>>4)&0x0f]);
        	stringBuilder.append(HEX_DIGITS[(bytes[i]&0x0f)]);
        }
        return stringBuilder.toString();
    }
}