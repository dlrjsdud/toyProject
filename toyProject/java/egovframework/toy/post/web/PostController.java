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
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.toy.cmmn.service.NaverProfile;
import egovframework.toy.post.service.CommentVO;
import egovframework.toy.post.service.PostService;
import egovframework.toy.post.service.PostVO;

@Controller
public class PostController {
	
	@Autowired
	PostService service;
	
	@GetMapping("/post.do")
	public String postDo(@RequestParam String div, @RequestParam String post_id, Model model) throws Exception {
		System.out.println("post.do 요청");
		System.out.println("@@@@@@@@@@@@@@@post.do div 확인 : "+div);

		if(div.equals("free")) {
			//조회수 1 증가
			service.incrementViewCountFree(post_id);
			
			//글 내용 가져오기
			PostVO postVo = service.getPostFree(post_id);
			
			postVo.setPost_div(div);
			
			//댓글 내용 가져오기
			List<CommentVO> commentVo = service.getCommentFree(post_id);
			
			model.addAttribute("post",postVo);
			model.addAttribute("comment",commentVo);
			
			return "main/post";
		}else if(div.equals("notice")) {
			//조회수 1 증가
			service.incrementViewCountNotice(post_id);
			
			//글 내용 가져오기
			PostVO postVo = service.getPostNotice(post_id);
			
			postVo.setPost_div(div);
			
			//댓글 내용 가져오기
			List<CommentVO> commentVo = service.getCommentNotice(post_id);
			
			model.addAttribute("post",postVo);
			model.addAttribute("comment",commentVo);
			
			return "main/post";
		}else {
			System.out.println("postcontroller div 오류");
			return "오류";
		}
		
	}
	
	@PostMapping("/comment.do")
	@ResponseBody
	public void commentDo(@RequestParam String post_div, @RequestParam String comment, @RequestParam int post_id, HttpServletRequest request) throws Exception{
		
		System.out.println("comment.do 요청");
		
		HttpSession session = request.getSession();

		NaverProfile userInfo = (NaverProfile) session.getAttribute("userInfo");
		
		String email = "이건영테스트";
		
		if(userInfo != null) {
			email = userInfo.getEmail();			
		}
		
		CommentVO vo = new CommentVO();
		
		vo.setContent(comment);
		vo.setPost_id(post_id);
		vo.setEmail(email);
		
		if(post_div.equals("free")) {
			service.commentDoFree(vo);
		}else {
			service.commentDoNotice(vo);
		}
		
	}
	
}
