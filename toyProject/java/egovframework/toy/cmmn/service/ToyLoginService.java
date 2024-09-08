package egovframework.toy.cmmn.service;

import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestParam;

public interface ToyLoginService {

	public String getNaverAuthorizeUrl(String type,HttpServletRequest request) throws UnsupportedEncodingException;
	
	public String getNaverTokenUrl(String type,HttpServletRequest request,@RequestParam("code")String code) throws MalformedURLException, UnsupportedEncodingException, URISyntaxException;
	
	public NaverProfile getNaverUserInfo(String accessToken);
	
	public void setNaverUserInfo(NaverProfile userInfo);
}
