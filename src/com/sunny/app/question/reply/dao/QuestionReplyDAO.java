package com.sunny.app.question.reply.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.sunny.app.question.reply.dto.QuestionReplyDTO;
import com.sunny.app.question.reply.vo.QuestionReplyVO;
import com.sunny.app.story.reply.dto.StoryReplyDTO;

public class QuestionReplyDAO {
	
	public SqlSession sqlSession;
	
	public QuestionReplyDAO() {
		
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
//	댓글더미가져오기
	public List<QuestionReplyVO> selectAll(int questionNumber) {
		return sqlSession.selectList("questionReply.selectAll", questionNumber);
	}
//	댓글작성
	public void insert(QuestionReplyDTO questionReplyDTO) {
		sqlSession.insert("questionReply.insert", questionReplyDTO);
	}
//	댓삭
	public void delete(int replyNumber) {
		sqlSession.delete("questionReply.delete", replyNumber);
	}
//	댓글수정
	public void update(QuestionReplyDTO questionReplyDTO) {
		sqlSession.update("questionReply.update", questionReplyDTO);
	}
	
}
