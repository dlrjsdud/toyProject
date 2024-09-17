package egovframework.toy.notice.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.toy.notice.service.NoticeVO;

@Mapper
public interface NoticeMapper {
	
	List<NoticeVO> getNotice() throws Exception;

}
