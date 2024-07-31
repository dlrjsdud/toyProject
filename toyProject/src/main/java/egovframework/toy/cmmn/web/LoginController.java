package egovframework.toy.cmmn.web;

import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/login.do")
	public String loginDo() {
		System.out.println("login.do 요청");
		return "main/login";
	}
	
	@GetMapping("/login/naver-login.do")
	public void naverLoging(HttpServletRequest request,HttpServletResponse response) throws MalformedURLException, UnsupportedEncodingException, URISyntaxException {
		
	}
	
	
	
}
