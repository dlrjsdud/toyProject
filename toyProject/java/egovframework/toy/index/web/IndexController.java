package egovframework.toy.index.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	
	@GetMapping("/index.do")
	public String indexDo() {
		System.out.println("index.do 요청");
		return "main/index";
	}

}
