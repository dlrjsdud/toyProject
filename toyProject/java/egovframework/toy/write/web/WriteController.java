package egovframework.toy.write.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.toy.cmmn.service.NaverProfile;
import egovframework.toy.post.service.PostVO;
import egovframework.toy.write.service.WriteService;
import egovframework.toy.write.service.WriteVO;

@Controller
public class WriteController {

	@Autowired
	WriteService service;

	@GetMapping("/write.do")
	public String indexDo() {
		System.out.println("write.do 요청");
		return "main/write";
	}

	@PostMapping("/register.do")
	public String registerDo(HttpServletRequest request, @RequestParam String title, @RequestParam String content)
			throws Exception {
		System.out.println("register.do 요청");

		HttpSession session = request.getSession();

		NaverProfile userInfo = (NaverProfile) session.getAttribute("userInfo");
		
		String email = "이건영테스트";
		
		if(userInfo != null) {
			email = userInfo.getEmail();			
		}

		WriteVO vo = new WriteVO();
		vo.setEmail(email);
		vo.setTitle(title);
		vo.setContent(content);

		int result = service.register(vo);

		return "redirect:/free.do";
	}

}
