package egovframework.toy.write.service.impl;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.toy.post.service.PostVO;
import egovframework.toy.write.service.WriteVO;

@Mapper
public interface WriteMapper {

	int register(WriteVO vo) throws Exception;
	
}
