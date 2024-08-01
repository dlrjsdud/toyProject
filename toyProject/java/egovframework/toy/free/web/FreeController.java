package egovframework.toy.free.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FreeController {

	@GetMapping("/free.do")
	public String indexDo() {
		System.out.println("free.do 요청");
		return "main/free";
	}
	
}
