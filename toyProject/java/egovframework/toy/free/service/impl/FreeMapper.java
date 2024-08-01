package egovframework.toy.free.service.impl;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.toy.free.service.FreeVO;

@Mapper("freeMapper")
public interface FreeMapper {
	
	FreeVO selectUser(String id) throws Exception;
	
}
