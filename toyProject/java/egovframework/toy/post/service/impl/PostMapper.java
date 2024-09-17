package egovframework.toy.post.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.toy.post.service.CommentVO;
import egovframework.toy.post.service.PostVO;

@Mapper
public interface PostMapper {
	
	PostVO getPostFree(String post_id) throws Exception;
	
	PostVO getPostNotice(String post_id) throws Exception;
	
	int incrementViewCountFree(String post_id) throws Exception;
	
	int incrementViewCountNotice(String post_id) throws Exception;
	
	List<CommentVO> getCommentFree(String post_id) throws Exception;
	
	List<CommentVO> getCommentNotice(String post_id) throws Exception;
	
	int commentDoFree(CommentVO vo) throws Exception;
	
	int commentDoNotice(CommentVO vo) throws Exception;
	
}
