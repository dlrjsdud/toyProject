package egovframework.toy.post.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.toy.post.service.CommentVO;
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
		PostVO postVo = service.getPost(post_id);
		
		//댓글 내용 가져오기
		List<CommentVO> commentVo = service.getComment(post_id);
		
		model.addAttribute("post",postVo);
		model.addAttribute("comment",commentVo);
		
		return "main/post";
	}
	
	@PostMapping("/comment.do")
	public void commentDo(@RequestParam String comment, @RequestParam String post_id, HttpServletRequest request) throws Exception{
		
		System.out.println("comment.do 요청");
		
		HttpSession session = request.getSession();
		
		String email = (String)session.getAttribute("email");
		
		int result = service.commentDo(post_id, email, comment);
	
	}
	
}
