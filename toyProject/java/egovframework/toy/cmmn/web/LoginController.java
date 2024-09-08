package egovframework.toy.cmmn.web;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.security.SecureRandom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hsqldb.lib.HashMap;
import org.hsqldb.lib.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.toy.cmmn.service.NaverProfile;
import egovframework.toy.cmmn.service.ToyLoginService;

@Controller
public class LoginController {
	
	@Autowired
	ToyLoginService toyLoginService;
	
	
	
	@GetMapping("/login.do")
	public String loginDo() {
		System.out.println("login.do 요청");
		return "main/login";
	}
	
	@GetMapping("/login/naver-login.do")
	public void naverLoging(HttpServletRequest request,HttpServletResponse response) throws MalformedURLException, UnsupportedEncodingException, URISyntaxException {
		System.out.println("controller 들어옴");
		//String responseToken = toyLoginService.getNaverTokenUrl("authorize");
		String url  = toyLoginService.getNaverAuthorizeUrl("authorize", request);
		System.out.println(url);
		try {
            response.sendRedirect(url);
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	
	 @GetMapping("/login/naver/code.do")
	   public String callBack(HttpServletRequest request, HttpServletResponse response,@RequestParam("code")String code,Model model,HttpSession session) throws MalformedURLException, UnsupportedEncodingException, URISyntaxException{
		 
		  Map<String, Object> map = new HashMap<>();
		 
	      System.out.println("콜백 컨드롤러 들어옴");
	      String accessToken = toyLoginService.getNaverTokenUrl("token",request,code);
	      System.out.println(accessToken);
	      
	      //accessToken으로 사용자 프로필 정보 가져오기
	      NaverProfile userInfo = toyLoginService.getNaverUserInfo(accessToken);
	      //DB에 사용자 프로필 저장하기
	      
	      boolean isUserExists = toyLoginService.isUserExists(userInfo.getEmail());

	      if (!isUserExists) {
	          toyLoginService.setNaverUserInfo(userInfo);
	          System.out.println("새로운 사용자 정보 DB에 저장");
	      } else {
	          System.out.println("이미 존재하는 사용자, 저장하지 않음");
	      }

	      System.out.println("DB에 값 저장하고 컨트롤러 돌아옴");
	      //map.put("id", userInfo.getName());
	      //map.put("nickName", userInfo.getNickname());
	      //map.put("email", userInfo.getEmail());
	      //map.put("mobile", userInfo.getMobile());
	      
	      //model.addAttribute("userInfo", map);
	      //model.addAttribute("email", userInfo.getEmail());
	      
	      session.setAttribute("userInfo", userInfo);
	      
	      return "main/index";
	      //return "redirect:/index.do";
	       
	   }

		@GetMapping("/logout.do")
		public String logout(HttpSession session) {
			session.removeAttribute("userInfo");
			return "redirect:/index.do";
		}
	
	
	
}
