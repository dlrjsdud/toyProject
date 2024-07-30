package egovframework.toy.post.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PostController {
	
	@GetMapping("/post.do")
	public String postDo() {
		System.out.println("post.do 요청");
		return "main/post";
	}
	
}
