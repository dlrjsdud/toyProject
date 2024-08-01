package egovframework.toy.cmmn.service;

import org.springframework.beans.factory.annotation.Value;

import lombok.Data;

@Data
public class NaverApi {

	@Value("Lytfg0QCqUNQaYbNPusV")
	private String naverClientId;
	
	@Value("http://localhost:8081/login/naver/code")
	private String naverRedirectUri;
	
	@Value("YpKL3v4wFp")
	private String naverClientSecret;
}
