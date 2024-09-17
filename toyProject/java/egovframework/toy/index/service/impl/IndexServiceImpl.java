package egovframework.toy.index.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.toy.index.service.IndexService;
import egovframework.toy.index.service.IndexVO;

@Service
public class IndexServiceImpl implements IndexService {
	
	@Autowired
	IndexMapper mapper;
	
	@Override
	public List<IndexVO> getRank() throws Exception {
		return mapper.getRank();
	}
	
	@Override
	public List<IndexVO> getIndexNotice() throws Exception {
		return mapper.getIndexNotice();
	}

}
