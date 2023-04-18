<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> -->
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>식고수 질문 | 볕 들 무렵</title>
    <link rel="stylesheet" href="../../assets/css/questionWrite.css" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  </head>
  <body>
<jsp:include
	page="${pageContext.request.contextPath}/app/header/header.jsp" />
    <div class="gosu-question">
      <div class="question-container">
        <!-- form action 작성 -->
        <form action="${pageContext.request.contextPath }/gosuApply/gosuApplyWriteOk.ga" id="write-form" method="post" enctype="multipart/form-data">
          <h1 class="title">
            <span class="story-icon"></span> 식고수에게 질문
            <span class="story-txt">식고수...그는 모든걸 다 알고 있어...</span>
          </h1>
          <!-- 제목입력 -->
          <div class="question-title">
            <input type="text" id="title" name="applyTitle" placeholder="* 질문 제목을 입력하세요. " required />
          </div>
          <!-- 질문 내용 -->
          <h1 class="mini-title">질문 내용 입력</h1>
          <div class="Content-box">
            <!-- 서머노트 -->
            <div class="summernote-box">
              <textarea id="summernote" name="applyContent"></textarea>
            </div>
            <!-- 첨부파일 -->
            <div class="upload-file-container">
              <div class="upload-file">
                <div class="upload-box">
                  <div class="upload-text">
                    <div class="upload-icon">
                      <img src="https://www.shouse.garden/images/ico/photo_g.png" class="upload-icon"/>
                    </div>
                    <div class="upload-count">사진 첨부</div>
                  </div>
                  <div class="upload-text">사진첨부 가능(<span class="cnt">0</span>/1)</div>
                  <div class="upload-text">파일 형식 : jpg, jpeg, png</div>
                  <div class="upload-text">※ 이미지를 등록하면 즉시 반영됩니다.</div>
                </div>
                <div class="img-controller-box">
                  <ul class="file-list"></ul>
                </div>
              </div>
            </div>
          </div>
          <!-- 등록 취소 버튼-->
          <div class="btn-groups">
            <button type="submit" name="action" value="write" class="submit-btn">등록</button>
            <button type="button" class="cancel-btn">취소</button>
          </div>
          <input type="file" name="applyFile" id="input-one" class="input" /><br />
        </form>
        <div class="upload-input-box">
          <input type="file" name="file-input" id="file-input" multiple />
        </div>
      </div>
    </div>
    <jsp:include page="${pageContext.request.contextPath}/app/admin/footer.jsp" />
    <script src="../../assets/js/questionWrite.js"></script>
  </body>
</html>
