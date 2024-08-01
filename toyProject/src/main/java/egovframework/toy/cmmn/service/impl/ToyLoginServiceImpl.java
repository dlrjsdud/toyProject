package egovframework.toy.cmmn.service.impl;


import java.net.URLEncoder;

import org.springframework.stereotype.Service;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import egovframework.toy.cmmn.service.NaverApi;
import egovframework.toy.cmmn.service.ToyLoginService;

@Service
public class ToyLoginServiceImpl implements ToyLoginService {

	@Override
	public String getNaverAuthorizeUrl(String type){	
		System.out.println("serviceimpl 들어옴");
		System.out.println(type);
		NaverApi naverApi;
		
		String baseUrl = "https://nid.naver.com/oauth2.0/";
        //String clientId = naverApi.getNaverClientId();
        String clientId = "Lytfg0QCqUNQaYbNPusV";
        //String redirectUrl = naverApi.getNaverRedirectUri();
        String redirectUrl = "http://localhost:8081/login/naver/code";
        String clientSecret = "YpKL3v4wFp";
        

        UriComponents uriComponents = UriComponentsBuilder
                .fromUriString(baseUrl + "/" + type)
                .queryParam("response_type", "code")
                .queryParam("client_id", clientId)
                .queryParam("state", URLEncoder.encode("1234", "UTF-8"))
                .queryParam("redirect_uri", URLEncoder.encode(redirectUrl, "UTF-8"))
                .build();

        System.out.println(uriComponents);
        return uriComponents.toString();
        
	}
	
}
