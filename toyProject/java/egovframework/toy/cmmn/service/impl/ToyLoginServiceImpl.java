package egovframework.toy.cmmn.service.impl;


import java.net.URLEncoder;

import org.springframework.stereotype.Service;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import egovframework.toy.cmmn.service.ToyLoginService;

@Service
public class ToyLoginServiceImpl implements ToyLoginService {

	public String getNaverAuthorizeUrl(String type){	
		/*
		 * String baseUrl = envConfig.getConfigValue("login.naver.baseUrl"); String
		 * clientId = envConfig.getConfigValue("login.naver.clientId"); String
		 * redirectUrl = envConfig.getConfigValue("login.naver.redirectUrl");
		 * 
		 * UriComponents uriComponents = UriComponentsBuilder .fromUriString(baseUrl +
		 * "/" + type) .queryParam("response_type", "code") .queryParam("client_id",
		 * clientId) .queryParam("redirect_uri", URLEncoder.encode(redirectUrl,
		 * "UTF-8")) .queryParam("state", URLEncoder.encode("1234", "UTF-8")) .build();
		 * 
		 * return uriComponents.toString();
		 */
		return null;
	}
	
}
