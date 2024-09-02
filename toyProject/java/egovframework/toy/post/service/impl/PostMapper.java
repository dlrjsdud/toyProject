package egovframework.toy.post.service.impl;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.toy.post.service.PostVO;

@Mapper
public interface PostMapper {
	
	PostVO getPost(String post_id) throws Exception;
	
	int incrementViewCount(String post_id) throws Exception;
	
}
