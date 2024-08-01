package egovframework.toy.post.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PostController {
	
	@GetMapping("/post.do")
	public String postDo() {
		System.out.println("post.do 요청");
		
		//DB에서 글 내용을 가져온뒤, model에 저장하는 코드
		
		return "main/post";
	}
	
}
