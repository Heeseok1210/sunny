
    // 3초 후에 result.jsp로 이동하는 함수
    function moveToResult() {
        setTimeout(function () {
            location.href = "/algorithm/result.ag";
        }, 1500); // 1.5초 후에 result.ag로 이동
    }


    // 페이지가 로드될 때 실행되는 함수
    window.onload = function () {
        moveToResult(); // 3초 후에 result.jsp로 이동
    }
