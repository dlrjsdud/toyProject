package egovframework.toy.free.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.toy.cmmn.service.TuiGridResponseVO;
import egovframework.toy.free.service.FreeService;
import egovframework.toy.free.service.FreeVO;

@Controller
public class FreeController {
	
	@Autowired
	FreeService service;

	@GetMapping("/free.do")
	public String freeDo() throws Exception {
		System.out.println("free.do 요청");
		return "main/free";
	}
	
	@ResponseBody
	@GetMapping(value = "/getFree.do", produces = "application/json")
	public TuiGridResponseVO getFree() throws Exception {
		
		System.out.println("getFree.do 요청");
		
		FreeVO vo = service.getFree();
		System.out.println(vo);
		
		return TuiGridResponseVO.builder().result(true).data(vo).build();
	}
	

}
