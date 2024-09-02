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
		
		//조회수 1 증가
		service.incrementViewCount(post_id);
		
		//글 내용 가져오기
		PostVO vo = service.getPost(post_id);
		
		model.addAttribute("post",vo);
		
		return "main/post";
	}
	
}
