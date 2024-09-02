package egovframework.toy.index.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import egovframework.toy.index.service.IndexService;
import egovframework.toy.index.service.IndexVO;

@Controller
public class IndexController {
	
	@Autowired
	IndexService service;
	
	@GetMapping("/index.do")
	public String indexDo(Model model) throws Exception{
		System.out.println("index.do 요청");
		
		List<IndexVO> list = service.getRank();

		model.addAttribute("postRankList",list);
		
		return "main/index";
	}

}
