package egovframework.toy.free.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

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
	public String getFree() throws Exception {
		
		System.out.println("getFree.do 요청");
		
		List<FreeVO> vo = service.getFree();
		
		ObjectMapper objectMapper = new ObjectMapper();
		TuiGridResponseVO vo2 = TuiGridResponseVO.builder().result(true).data(vo).build();
		return objectMapper.writeValueAsString(vo2);
		
	}
	

}
