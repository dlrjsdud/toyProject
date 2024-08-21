package egovframework.toy.free.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.toy.free.service.FreeVO;

@Mapper
public interface FreeMapper {
	
	List<FreeVO> getFree() throws Exception;
	
}
