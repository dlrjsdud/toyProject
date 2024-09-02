package egovframework.toy.cmmn.service.impl;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import egovframework.toy.cmmn.service.NaverApi;
import egovframework.toy.cmmn.service.ToyLoginService;

@Service
public class ToyLoginServiceImpl implements ToyLoginService {
	
	NaverApi naverApi;
	
	public String generateState()
	{
	    SecureRandom random = new SecureRandom();
	    return new BigInteger(130, random).toString(32);
	}


	@Override
	public String getNaverAuthorizeUrl(String type,HttpServletRequest request) throws UnsupportedEncodingException{	
		System.out.println("serviceimpl 들어옴");
		System.out.println(type);
		
		String baseUrl = "https://nid.naver.com/oauth2.0";
		String clientId = "Lytfg0QCqUNQaYbNPusV";
		String redirectUrl = "http://localhost:8081/toyProject/login/naver/code.do";
		//String clientSecret ="YpKL3v4wFp";
		//String clientId = naverApi.getNaverClientId();
        //String redirectUrl = naverApi.getNaverRedirectUri();
		//String clientSecret = naverApi.getNaverClientSecret();
		
		String state = generateState();
		System.out.println("state생성 : "+state );
		HttpSession session = request.getSession();
		//request.session().attribute("state", state);
		session.setAttribute("state",state);
		
        UriComponents uriComponents = UriComponentsBuilder
                .fromUriString(baseUrl + "/" + type)
                .queryParam("response_type", "code")
                .queryParam("client_id", clientId)
                .queryParam("redirect_uri", URLEncoder.encode(redirectUrl, "UTF-8"))
                .build();

        System.out.println(uriComponents.toString());
        return uriComponents.toString();
	}
	
	private final RestTemplate restTemplate = new RestTemplate();
	
	@Override
	public String getNaverTokenUrl(String type,HttpServletRequest request,@RequestParam("code")String code) throws MalformedURLException, UnsupportedEncodingException, URISyntaxException{
		System.out.println("token서비스");
		System.out.println("code"+code);
		String baseUrl = "https://nid.naver.com/oauth2.0";
		String clientId = "Lytfg0QCqUNQaYbNPusV";
		String redirectUrl = "http://localhost:8081/toyProject/login/naver/code.do";
		String clientSecret ="YpKL3v4wFp";
        String redirectURI = URLEncoder.encode(redirectUrl, "UTF-8");
        
        HttpSession session = request.getSession();       
		String state = (String)session.getAttribute("state");
		System.out.println("콜백함수 state : "+state);        
		
        UriComponents uriComponents = UriComponentsBuilder
                .fromUriString(baseUrl + "/" + type)
                .queryParam("grant_type", "authorization_code")
                .queryParam("client_id", clientId)
                .queryParam("client_secret", clientSecret)
                .queryParam("redirect_uri", redirectURI)
                .queryParam("code",code)
                .queryParam("state",state)
                .build();
      
        // URI 생성
        String uri = uriComponents.toUriString();
        System.out.println("아무거나");

        // GET 요청을 보내고, 응답을 String 타입으로 받기
        String response = restTemplate.getForObject(uri, String.class);
        
        System.out.println(response);

        return response;
	}
	
}
