package egovframework.toy.notice.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import egovframework.toy.cmmn.service.TuiGridResponseVO;
import egovframework.toy.notice.service.NoticeService;
import egovframework.toy.notice.service.NoticeVO;

@Controller
public class NoticeController {
	
	@Autowired
	NoticeService service;

	@GetMapping("/notice.do")
	public String indexDo(Model model) throws Exception{
		System.out.println("notice.do 요청");
		
		return "main/notice";
	}
	
	@ResponseBody
	@GetMapping(value = "/getNotice.do", produces = "application/json")
	public String getNotice() throws Exception {
		
		System.out.println("getNotice.do 요청");
		
		List<NoticeVO> vo = service.getNotice();
		
		ObjectMapper objectMapper = new ObjectMapper();
		TuiGridResponseVO vo2 = TuiGridResponseVO.builder().result(true).data(vo).build();
		return objectMapper.writeValueAsString(vo2);
		
	}
	
}
