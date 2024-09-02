package egovframework.toy.write.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.toy.write.service.WriteService;
import egovframework.toy.write.service.WriteVO;

@Service
public class WriteServiceImpl implements WriteService {
	
	@Autowired
	WriteMapper mapper;
	
	@Override
	public int register(WriteVO vo) throws Exception {
		return mapper.register(vo);
	}
	
}
