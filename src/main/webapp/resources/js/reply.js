$(document).ready(function(){
	$('#replybutton').click(function(){
		var insertData = $("#replyform").serialize();
		replyInsert(insertData);
	})
	
	// 댓글 등록
	function replyInsert(insertData) {
		var id = $("#replyId").val();
		var pw = $("#replyPassword").val();
		var content = $("#replycontent").val();
		var bno = $("#bno").val();
		$.ajax({
			url : '/replywrite', 
			data : {"bno" : bno, "id" : id, "password" : pw, "contents" : content}, 
			type : 'post', 
			datatype : 'json', 
			success : function() {	
				alert("댓글이 등록되었습니다.");
				document.location.href="board/boarddetail";	
			}, 
			error : function() {
				alert("댓글 등록 실패");
			}
		});
	}

});//onload end