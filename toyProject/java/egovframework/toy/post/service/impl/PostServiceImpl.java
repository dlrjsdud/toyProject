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
	public PostVO getPost(String post_id) throws Exception {
		PostVO postVo = mapper.getPost(post_id);
		return postVo;
	}
	
	@Override
	public int incrementViewCount(String post_id) throws Exception{
		int result = mapper.incrementViewCount(post_id);
		return result;
	}
	
	@Override
	public List<CommentVO> getComment(String post_id) throws Exception{
		List<CommentVO> commentVo = mapper.getComment(post_id);
		return commentVo;
	}
	
	@Override
	public int commentDo(String post_id, String email, String comment) throws Exception{
		System.out.println("확인");
		return mapper.commentDo(post_id, email, comment);
	}
	
}
