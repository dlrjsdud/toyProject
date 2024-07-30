package egovframework.toy.cmmn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/index.do")
	public String indexDo() {
		System.out.println("index.do 요청");
		return "main/index";
	}

}
