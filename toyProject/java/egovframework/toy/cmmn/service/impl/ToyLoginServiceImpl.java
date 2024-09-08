package egovframework.toy.cmmn.service.impl;


import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.security.SecureRandom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import egovframework.toy.cmmn.service.NaverApi;
import egovframework.toy.cmmn.service.NaverProfile;
import egovframework.toy.cmmn.service.ToyLoginService;

@Service
public class ToyLoginServiceImpl implements ToyLoginService {
   
   NaverApi naverApi;
   
   ToyLoginMapper toyLoginMapper;
   
   public String generateState()
   {
       SecureRandom random = new SecureRandom();
       return new BigInteger(130, random).toString(32);
   }
   
   private final RestTemplate restTemplate = new RestTemplate();

   private final static String BASE_URI = "https://nid.naver.com/oauth2.0";
   private final static String CLIENT_ID = "Lytfg0QCqUNQaYbNPusV";
   private final static String CLIENT_SECRET = "YpKL3v4wFp";
   private final static String REDIRECT_URI = "http://localhost:8081/toyProject/login/naver/code.do";
   

   @Override
   public String getNaverAuthorizeUrl(String type,HttpServletRequest request) throws UnsupportedEncodingException{   
      System.out.println("serviceimpl 들어옴");
      System.out.println(type);
      
      //String baseUrl = "https://nid.naver.com/oauth2.0";
      //String clientId = "Lytfg0QCqUNQaYbNPusV";
      //String redirectUrl = "http://localhost:8081/toyProject/login/naver/code.do";

      String state = generateState();
      System.out.println("state생성 : "+state );
      HttpSession session = request.getSession();
      //request.session().attribute("state", state);
      session.setAttribute("state",state);
      
        UriComponents uriComponents = UriComponentsBuilder
                .fromUriString(BASE_URI + "/" + type)
                .queryParam("response_type", "code")
                .queryParam("client_id", CLIENT_ID)
                .queryParam("redirect_uri", URLEncoder.encode(REDIRECT_URI, "UTF-8"))
                .queryParam("state", state)
                .build();

        System.out.println(uriComponents.toString());
        return uriComponents.toString();
   }
   
   
   
   @Override
   public String getNaverTokenUrl(String type,HttpServletRequest request,@RequestParam("code")String code) throws MalformedURLException, UnsupportedEncodingException, URISyntaxException{
      System.out.println("token서비스");
      System.out.println("code"+code);
      //String baseUrl = "https://nid.naver.com/oauth2.0";
      //String clientId = "Lytfg0QCqUNQaYbNPusV";
      //String redirectUrl = "http://localhost:8081/toyProject/login/naver/code.do";
      //String clientSecret ="YpKL3v4wFp";
        String redirectURI = URLEncoder.encode(REDIRECT_URI, "UTF-8");
        
        HttpSession session = request.getSession();       
      String state = (String)session.getAttribute("state");
      System.out.println("콜백함수 state : "+state);        
      
        UriComponents uriComponents = UriComponentsBuilder
                .fromUriString(BASE_URI + "/" + type)
                .queryParam("grant_type", "authorization_code")
                .queryParam("client_id", CLIENT_ID)
                .queryParam("client_secret", CLIENT_SECRET)
                .queryParam("redirect_uri", redirectURI)
                .queryParam("code",code)
                .queryParam("state",state)
                .build();
      
        // URI 생성
        String uri = uriComponents.toUriString();
        System.out.println("아무거나");

        // GET 요청을 보내고, 응답을 String 타입으로 받기
        String response = restTemplate.getForObject(uri, String.class);
        
        //String token = response[0];
        System.out.println(response);
        
        ObjectMapper objectMapper = new ObjectMapper();
        String accessToken = null;
        try {
            JsonNode jsonNode = objectMapper.readTree(response);
            accessToken = jsonNode.get("access_token").asText();
            //naverApi.setAccessToken(accessToken);
            System.out.println("Access Token: " + accessToken);
  
        } catch (Exception e) {
            e.printStackTrace();
        }

        return accessToken;
   }
   
   @Override
   public NaverProfile getNaverUserInfo(String accessToken) {
       if (accessToken == null) {
           System.out.println("AccessToken이 없습니다. 유저 정보를 가져올 수 없습니다.");
           return null;
       }

       String reqUrl = "https://openapi.naver.com/v1/nid/me";
       HttpHeaders headers = new HttpHeaders();
       headers.add("Authorization", "Bearer " + accessToken);

       HttpEntity<MultiValueMap<String, String>> naverProfileRequest = new HttpEntity<>(headers);

       ResponseEntity<String> response = restTemplate.exchange(reqUrl,
                                               HttpMethod.POST,
                                               naverProfileRequest,
                                               String.class);

       System.out.println("response = " + response);
       NaverProfile naverProfile = new NaverProfile(response.getBody());

       return naverProfile;
   }
   
   @Override
   public void setNaverUserInfo(NaverProfile userInfo) {
	   
	   int setNaverUserInfoRes = toyLoginMapper.setNaverUserInfo(userInfo);
	   System.out.println(setNaverUserInfoRes);
   }
   
}
