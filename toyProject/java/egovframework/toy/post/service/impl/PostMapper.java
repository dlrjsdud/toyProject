package egovframework.toy.post.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.toy.post.service.CommentVO;
import egovframework.toy.post.service.PostVO;

@Mapper
public interface PostMapper {
	
	PostVO getPost(String post_id) throws Exception;
	
	int incrementViewCount(String post_id) throws Exception;
	
	List<CommentVO> getComment(String post_id) throws Exception;
	
	int commentDo(String post_id, String email, String comment) throws Exception;
	
}
