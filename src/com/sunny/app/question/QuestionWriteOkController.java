package com.sunny.app.question;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sunny.app.Execute;
import com.sunny.app.question.dao.QuestionDAO;
import com.sunny.app.question.dto.QuestionDTO;
import com.sunny.app.question.file.dao.QuestionFileDAO;
import com.sunny.app.question.file.dto.QuestionFileDTO;

public class QuestionWriteOkController implements Execute {

   @Override
   public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      QuestionDAO questionDAO = new QuestionDAO();
      QuestionDTO questionDTO = new QuestionDTO();
      QuestionFileDAO questionFileDAO = new QuestionFileDAO();
      QuestionFileDTO questionFileDTO = new QuestionFileDTO();
      int questionNumber = 0;

      //   세션체크
      
      int userNumber = (Integer)req.getSession().getAttribute("userNumber");
      System.out.println("Session : userNumber = " + userNumber);
      
      // 파일 사이즈 , 업로드 경로 설정
        
      int maxSize  = 1024*1024*30;
        String fsl = File.separator;
        String root = req.getSession().getServletContext().getRealPath(fsl);
        String rootPath = root + fsl + "upload/questionupload";
      
      System.out.println(rootPath);

      MultipartRequest mr = new MultipartRequest(req, rootPath, maxSize, "utf-8", new DefaultFileRenamePolicy());
      
      
      //   gosuNumber 확인
      
      int gosuNumber = Integer.parseInt(mr.getParameter("gosuNumber"));
      System.out.println("gosuNumber = " + gosuNumber);
      
      //   question 게시글 DB 저장
      
      questionDTO.setQuestionTitle(mr.getParameter("questionTitle"));
      questionDTO.setQuestionContent(mr.getParameter("questionContent"));
      questionDTO.setUserNumber(userNumber);
      questionDTO.setGosuNumber(gosuNumber);
      questionDAO.insert(questionDTO);
      
      //   questionNumber 가져오기
      
      questionNumber = questionDAO.getSequence();
      
      //    첨부파일 파일 이름 DB 저장
      
      Enumeration<String> fileNames = mr.getFileNames();
      
      while (fileNames.hasMoreElements()) {
          String name = fileNames.nextElement();
          String fileSystemName = mr.getFilesystemName(name);
          String fileOriginalName = mr.getOriginalFileName(name);
          if (fileSystemName == null) {
              continue;
          }
          questionFileDTO.setFileSystemName(fileSystemName);
          questionFileDTO.setFileOriginalName(fileOriginalName);
          questionFileDTO.setQuestionNumber(questionNumber);
          questionFileDTO.setGosuNumber(gosuNumber);
          
          questionFileDAO.insert(questionFileDTO);
      }
      //    경로처리
      
      resp.sendRedirect("/question/questionListOk.qs");
   }
}