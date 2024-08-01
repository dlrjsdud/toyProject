package egovframework.toy.free.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import egovframework.toy.free.service.FreeService;
import egovframework.toy.free.service.FreeVO;

@Controller
public class FreeController {
	
	@Autowired
	FreeService service;

	@GetMapping("/free.do")
	public String freeDo() throws Exception {
		System.out.println("free.do 요청");
		
		FreeVO vo = service.selectUser("qwe");
		if(vo==null) {
			System.out.println("비었음");
		}else {
			System.out.println("안비었음");
		}
		System.out.println(vo.getId());
		System.out.println(vo.getPassword());
		
		return "main/free";
	}
	
}
