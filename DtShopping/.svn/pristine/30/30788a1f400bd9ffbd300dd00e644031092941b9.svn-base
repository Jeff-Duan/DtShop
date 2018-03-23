package message;

import com.alibaba.fastjson.JSON;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 短信相关的工具类
 * 
 * @author 李帅威
 */
public class SMSUtils {

    private static final String NONCE = "123456";
	private static final String APP_SECRET = "dd668ceabcee";
    private static final String APP_KEY = "802edf7e68ac2b355800707baaaa0827";
    
    /**
     * 检测手机号有效性
     * 
     * @param mobile 手机号码
     * @return 是否有效
     */
    public static final boolean isMobile(String mobile){
        Pattern pattern = Pattern.compile("^((1[3578][0-9])|(14[57]))\\d{8}$");
        Matcher matcher = pattern.matcher(mobile);
        return matcher.matches();
    }
    
    /**
     * 验证码类短信，注意：该短信中验证码不能自己生成，由网易云生成
     * 
     * @param mobile 手机号码
     * @param templateId 验证码模板ID
     * @return 是否发送成功
     */
    public static final boolean sendCode(String mobile, String templateId) throws IOException {
        HttpPost httpPost = new HttpPost("https://api.netease.im/sms/sendcode.action");

        String currentTime = String.valueOf(new Date().getTime()/1000L);
        String checkSum = CheckSumBuilder.getCheckSum(APP_SECRET,NONCE,currentTime);

        //set header
        httpPost.setHeader("AppKey",APP_KEY);
        httpPost.setHeader("CurTime",currentTime);
        httpPost.setHeader("Nonce",NONCE);
        httpPost.setHeader("CheckSum",checkSum);
        httpPost.setHeader("Content-Type","application/x-www-form-urlencoded;charset=utf-8");

        //set data
        List<NameValuePair> nameValuePairList = new ArrayList<NameValuePair>();
        nameValuePairList.add(new BasicNameValuePair("mobile",mobile));
        nameValuePairList.add(new BasicNameValuePair("templateid", templateId));
        httpPost.setEntity(new UrlEncodedFormEntity(nameValuePairList,"utf-8"));

        //start request
        CloseableHttpClient closeableHttpClient = HttpClients.createDefault();
        HttpResponse httpResponse = closeableHttpClient.execute(httpPost);
        String responseResult = EntityUtils.toString(httpResponse.getEntity(),"utf-8");
        System.out.println("responseResult:"+responseResult);

        String stateCode = JSON.parseObject(responseResult).getString("code");
        if(stateCode.equals("200")){
            return true;
        }
        return false;
    }

    /**
     * 判断用户输入验证码与网易云生成的验证码是否一致
     * 
     * @param mobile 电话号码
     * @param code 发送到mobile上的短信
     */
    public static final boolean verifyCode(String mobile, String code) throws IOException {
        HttpPost httpPost = new HttpPost("https://api.netease.im/sms/verifycode.action");

        String currentTime = String.valueOf(new Date().getTime()/1000L);
        String checkSum = CheckSumBuilder.getCheckSum(APP_SECRET,NONCE,currentTime);

        //set header
        httpPost.setHeader("AppKey",APP_KEY);
        httpPost.setHeader("CurTime",currentTime);
        httpPost.setHeader("Nonce",NONCE);
        httpPost.setHeader("CheckSum",checkSum);
        httpPost.setHeader("Content-Type","application/x-www-form-urlencoded;charset=utf-8");

        //set data
        List<NameValuePair> nameValuePairList = new ArrayList<NameValuePair>();
        nameValuePairList.add(new BasicNameValuePair("code",code));
        nameValuePairList.add(new BasicNameValuePair("mobile",mobile));
        httpPost.setEntity(new UrlEncodedFormEntity(nameValuePairList,"utf-8"));

        //start request
        CloseableHttpClient closeableHttpClient = HttpClients.createDefault();
        HttpResponse httpResponse = closeableHttpClient.execute(httpPost);
        String responseResult = EntityUtils.toString(httpResponse.getEntity(),"utf-8");
        System.out.println("responseResult:"+responseResult);

        String stateCode = JSON.parseObject(responseResult).getString("code");
        if(stateCode.equals("200")){
            return true;
        }
        return false;
    }
    
    
    /**
     * 生成短信验证码
     * 
     * @param length 长度
     * @param numberCode 验证码类型
     * @return 指定长度的随机短信验证码
     */
    public static final String getRandomSMSCode(int length, boolean numberCode) {
        String randomSMSCode = "";
        String codeTable = numberCode ? "1234567890" : "1234567890abcdefghijkmnpqrstuvwxyz";
        boolean flag = true;
        do {
            int count = 0;
            for (int i = 0; i < length; i++) {
                double dblR = Math.random() * codeTable.length();
                int intR = (int) Math.floor(dblR);
                char c = codeTable.charAt(intR);
                if (('0' <= c) && (c <= '9')) {
                    count++;
                }
                randomSMSCode += codeTable.charAt(intR);
            }
            if (count >= 2) {
            	flag = false;
            }
        } while (flag);
        return randomSMSCode;
    }
}