<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import ="com.especial.VO.BoardBean" %>
<% 
	
	String nowPage = (String)request.getAttribute("page");
	String review_title = (String)request.getAttribute("room_review_title");

 %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <section id="deletepage">
      
      <section name="header">
        <header>
          <!-- 헤더 추가하여 넣기-->
          <div id="header">
            <img src="http://placehold.it/1000x200" />
          </div>
        </header>
      </section>
      <section class="content">
        <div>
          <span id="title" name="title"><%= review_title %></span>
        </div>
        <br />
        <hr />
        <br />
        
        <form name="deleteReview" action = "boardDeletePro.room?room_review_no=<%=room_review_no %>" method="post">
        
        <div class="question_Delete">
          <div>
            <span>
              <h1>삭제할건가요?</h1>
            </span>
          </div>
          <div>
            <span>
              <input type="submit" value="삭제" /> &nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <span>
              <input type="button" value="취소" onClick ="javascript:history.go(-1)"/>
            </span>
          </div>
          <br />
          <hr />
        </div>
        
        
        </form>
        
        
      </section>
    </section>
  </body>
</html>
