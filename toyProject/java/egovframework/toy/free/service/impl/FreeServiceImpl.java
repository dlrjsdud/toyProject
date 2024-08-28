package egovframework.toy.free.service.impl;

import java.util.List;

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
	public List<FreeVO> getFree() throws Exception {
		List<FreeVO> freeVo = mapper.getFree();
		return freeVo;
	}
	
}
