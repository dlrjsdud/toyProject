$(document).ready(function() {
    $('#commentForm').on('submit', function(event) {
        event.preventDefault(); // 기본 제출 방지
        
        const comment = $('#comment').val(); // textarea의 값 가져오기
        const post_id = $('input[name="post_id"]').val(); // post_id 가져오기
        const post_div = $('input[name="post_div"]').val();

        $.ajax({
            type: 'POST',
            url: '/toyProject/comment.do', // 서버의 댓글 처리 URL로 변경
            data: { 
                comment: comment,
                post_id: post_id, // post_id 추가
                post_div: post_div
            },
            success: function(response) {
                // 성공적으로 처리됐을 때 실행할 코드
                $('#comment').val(''); // 입력란 초기화
                location.reload();
            },
            error: function() {
                // 오류 처리
                alert('댓글 등록에 실패했습니다. 다시 시도하세요.');
            }
        });
    });
});