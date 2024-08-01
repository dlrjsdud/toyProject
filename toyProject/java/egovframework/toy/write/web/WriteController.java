package egovframework.toy.write.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WriteController {
		
	@GetMapping("/write.do")
	public String indexDo() {
		System.out.println("write.do 요청");
		return "main/write";
	}
	
}
