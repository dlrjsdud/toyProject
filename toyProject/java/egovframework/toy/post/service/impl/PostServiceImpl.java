package egovframework.toy.post.service.impl;

import java.util.List;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.toy.post.service.CommentVO;
import egovframework.toy.post.service.PostService;
import egovframework.toy.post.service.PostVO;

@Service
public class PostServiceImpl extends EgovAbstractServiceImpl implements PostService {
	
	@Autowired
	PostMapper mapper;
	
	@Override
	public PostVO getPostFree(String post_id) throws Exception {
		PostVO postVo = mapper.getPostFree(post_id);
		return postVo;
	}
	
	@Override
	public PostVO getPostNotice(String post_id) throws Exception {
		PostVO postVo = mapper.getPostNotice(post_id);
		return postVo;
	}
	
	@Override
	public int incrementViewCountFree(String post_id) throws Exception{
		int result = mapper.incrementViewCountFree(post_id);
		return result;
	}
	
	@Override
	public int incrementViewCountNotice(String post_id) throws Exception{
		int result = mapper.incrementViewCountNotice(post_id);
		return result;
	}
	
	@Override
	public List<CommentVO> getCommentFree(String post_id) throws Exception{
		List<CommentVO> commentVo = mapper.getCommentFree(post_id);
		return commentVo;
	}
	
	@Override
	public List<CommentVO> getCommentNotice(String post_id) throws Exception{
		List<CommentVO> commentVo = mapper.getCommentNotice(post_id);
		return commentVo;
	}
	
	@Override
	public int commentDoFree(CommentVO vo) throws Exception{
		return mapper.commentDoFree(vo);
	}
	
	@Override
	public int commentDoNotice(CommentVO vo) throws Exception{
		return mapper.commentDoNotice(vo);
	}
	
}
