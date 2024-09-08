document.addEventListener('DOMContentLoaded', function() {
    loadDailyTopPosts();
});

function loadDailyTopPosts() {
    document.getElementById('contentArea').innerHTML = `
        <p class="card-text">1위 - 자유게시판 "똥민지"</p>
        <p class="card-text">2위 - a게시판 "시른데~?"</p>
        <p class="card-text">. . .</p>
        <p class="card-text">10위 - b게시판 "얌푸"</p>
    `;
    document.getElementById('headerArea').innerHTML = '일간 인기글';
}

function loadNotices() {
    document.getElementById('contentArea').innerHTML = `
        <p class="card-text">공지사항 1 - 시스템 점검 안내</p>
        <p class="card-text">공지사항 2 - 이벤트 참여 방법 안내</p>
        <p class="card-text">공지사항 3 - 새 게시판 오픈!</p>
    `;
    document.getElementById('headerArea').innerHTML = '공지사항';
}