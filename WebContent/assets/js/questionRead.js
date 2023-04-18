
let $listBtn = $('.list-btn');
let $modifyBtn = $('.modify-btn');
let $deleteBtn = $('.delete-btn');

let questionNumber = $listBtn.data("questionnumber");

$listBtn.on('click', () => {
	window.location.href = '/story/storyListOk.st';
});

$modifyBtn.on('click', () => {
	window.location.href = '/question/questionUpdate.qs?questionNumber=' + questionNumber;
});

$deleteBtn.on('click', () => {
	window.location.href = '/question/questionDeleteOk.qs?questionNumber=' + questionNumber;
});

storyReplyAjax();

function storyReplyAjax() {
	$.ajax({
		url: '/question/questionListOk.qs',
		type: 'get',
		data: { questionNumber: questionNumber },
		dataType: "json",
		success: showStoryReply
	});
}

function showStoryReply(replies) {
	let text = '';

	replies.forEach(questionReply => {
      text += `
            <ul id="comment-list">
                  <li>
                     <div class="comment-info">
                        <span class="writer">${questionReply.userNickName}</span> <span
                           class="date">${questionReply.replyDate}</span>
                     </div>
                     <div class="comment-content-wrap">
                        <div class="comment-content">
                           <p>${reply.replyContent}</p>
                        </div>`
                        
         if(userNumber == questionReply.userNumber){               
         text +=    `<div class="comment-btn-group">
                           <button type=button class="comment-modify-ready">수정</button>
                           <button type=button class="comment-delete" data-number="${questionReply.replyNumber}">삭제</button>
                        </div>
                        <div class="comment-btn-group none">
                           <button type=button class="comment-modify" data-number="${questionReply.replyNumber}">수정 완료</button>
                        </div>`
                        
         }         
         
         text+=   `</div>
                  </li>
            </ul>
      `;
   });
	$('.comment-list').html(text);
}

//댓글작성
$('.submit-btn').on('click',function(){
	$.ajax({
		url : '/questionReply/questionReplyWriteOk.qr',
		type : 'post',
		data : {
			questionNumber : questionNumber,
			userNumber : userNumber,
			gosuNumber : gosuNumber,
			replyContent : $('#content').val()
		},
		success : function(){
			storyReplyAjax();
		}
	});
});


//댓글삭제
$('.comment-list').on('click','.comment-delete' ,function(){
	let replyNumber = $(this).data("number");
	
	$.ajax({
		url : "/questionReply/questionReplyDeleteOk.qr",
		type : "get",
		data : {replyNumber : replyNumber},
		success : function(){
			storyReplyAjax();
		}
	});
});

$('.comment-list').on('click','.comment-modify-ready' ,function(){
		let $parent = $(this).closest('#comment-list');
		/*console.log($parent);*/
		
		let $children = $parent.find('.comment-btn-group');
		/*console.log($children);*/
		
		$children.eq(0).hide();
		$children.eq(1).show();
		
		let $content = $(this).parent().prev().children();
		console.log($content);
		
		$content.replaceWith(`<textarea class='modify-content'>${$content.text()}</textarea>`);
});

$('.comment-list').on('click','.comment-modify',function(){
	let replyNumber = $(this).data('number');
	
	$.ajax({
		url : "/questionReply/questionReplyUpdateOk.qr",
		type : "get",
		data : {
			replyNumber : replyNumber,
			replyContent : $('.modify-content').val()
		},
		success : function(){
			storyReplyAjax();
		}
	});
});