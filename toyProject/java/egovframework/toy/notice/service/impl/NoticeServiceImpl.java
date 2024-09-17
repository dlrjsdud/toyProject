package egovframework.toy.notice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.toy.notice.service.NoticeService;
import egovframework.toy.notice.service.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeMapper mapper;
	
	@Override
	public List<NoticeVO> getNotice() throws Exception{
		return mapper.getNotice();
	}

}
