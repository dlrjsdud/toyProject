package egovframework.toy.free.service.impl;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.toy.free.service.FreeService;
import egovframework.toy.free.service.FreeVO;

@Service
public class FreeServiceImpl extends EgovAbstractServiceImpl implements FreeService {

	@Autowired
	FreeMapper mapper;
	
	@Override
	public FreeVO selectUser(String id) throws Exception {
		FreeVO freeVo = mapper.selectUser(id);
		return freeVo;
	}
	
}
