package egovframework.toy.index.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import egovframework.toy.index.service.IndexService;
import egovframework.toy.index.service.IndexVO;

@Controller
public class IndexController {
	
	@Autowired
	IndexService service;
	
	@GetMapping("/index.do")
	public String indexDo(Model model) throws Exception{
		System.out.println("index.do 요청");
		
		return "main/index";
	}
	
	@GetMapping("/rank.do")
    @ResponseBody
    public String rankDo() throws Exception {
        System.out.println("rank.do 요청");

        List<IndexVO> rankList = service.getRank();

        // ObjectMapper를 사용하여 JSON으로 변환
        ObjectMapper objectMapper = new ObjectMapper();
        return objectMapper.writeValueAsString(rankList);
    }
	
	@GetMapping("/indexNotice.do")
    @ResponseBody
    public String indexNoticeDo() throws Exception {
        System.out.println("notice.do 요청");

        List<IndexVO> noticeList = service.getIndexNotice();

        // ObjectMapper를 사용하여 JSON으로 변환
        ObjectMapper objectMapper = new ObjectMapper();
        return objectMapper.writeValueAsString(noticeList);
    }

}
