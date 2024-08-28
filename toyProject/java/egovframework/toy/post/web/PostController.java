package egovframework.toy.post.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.toy.post.service.PostService;
import egovframework.toy.post.service.PostVO;

@Controller
public class PostController {
	
	@Autowired
	PostService service;
	
	@GetMapping("/post.do")
	public String postDo(@RequestParam String post_id, Model model) throws Exception {
		System.out.println("post.do 요청");
		
		//DB에서 글 내용을 가져온뒤, model에 저장하는 코드
		PostVO vo = service.getPost(post_id);
		
		model.addAttribute("post",vo);
		
		return "main/post";
	}
	
}
