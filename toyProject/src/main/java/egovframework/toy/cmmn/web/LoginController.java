package egovframework.toy.cmmn.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/login.do")
	public String loginDo() {
		System.out.println("login.do 요청");
		return "main/login";
	}
	
}
