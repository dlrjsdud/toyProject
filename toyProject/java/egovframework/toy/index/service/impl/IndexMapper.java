package egovframework.toy.index.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.toy.index.service.IndexVO;

@Mapper
public interface IndexMapper {

	List<IndexVO> getRank() throws Exception;
	
}
