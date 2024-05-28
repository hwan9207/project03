
/*header*/

$(function(){
            var depth1 = $(".item1"),
                header = $("header");

                //depth1에 hover header 길이를 300px
            depth1.mouseenter(function(){
                header.stop().animate({height:"330px"})
            }).mouseleave(function(){
                header.stop().animate({height:"90px"})
            })
                //depth1에 hover header 높이를 90px
        });
        $(".item1 ").hover(
                function() {
                    $(".yhd").css("background-color", "#6C7A89");
                },
                function() {
                    $(".yhd").css("background-color", "");
                }
            );

/*page3*/
document.addEventListener("DOMContentLoaded", function () {
    const calendarTable = document.getElementById("calendarTable"); 
    const monthYearElement = document.getElementById("monthYear"); 
    const cprevBtn = document.getElementById("cprevBtn");
    const cnextBtn = document.getElementById("cnextBtn");

    let currentDate = new Date();

    function generateCalendar () {
        const daysInMonth = new Date(currentDate.getFullYear(), currentDate.getMonth() +1,0).getDate(); 
        const firstDayOfMonth = new Date(currentDate.getFullYear(), currentDate.getMonth(), 1).getDay();
        // 테이블 생성
        let tableContent = '<tr><th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th></tr><tr>';
        // 첫 주의 빈 칸 채우기
        for (let i=0; i < firstDayOfMonth; i++) {
            tableContent += '<td></td>';
        }
        
        for (let day=1; day <= daysInMonth; day++) {
            if (currentDate.getMonth() === 4 && [3, 5, 7,10,11,12,13,17,19,24,25,26,29,31].includes(day)) {
                // 5월 3일에 해당하는 요소에 클래스 추가
                tableContent += '<td class="sday">' + day + '</td>';
            } else {
                tableContent += `<td>${day} </td>`;
            }
            if ((firstDayOfMonth + day) % 7 === 0 && day < daysInMonth) { 
                tableContent += '</tr><tr>';
            }
        }
        
        tableContent += '</tr>';
        calendarTable.innerHTML = tableContent;
    }

    function updateCalendar () {
        generateCalendar ();
        monthYearElement.innerText = `${currentDate.getFullYear()}년 ${currentDate.getMonth() + 1}월`;
    }

    updateCalendar(); // 초기 로딩 시에도 업데이트 수행
    
    cprevBtn.addEventListener("click", function () {
        currentDate.setMonth(currentDate.getMonth() - 1);
        updateCalendar ();
    });
    cnextBtn.addEventListener("click", function () {
        currentDate.setMonth(currentDate.getMonth() + 1);
        updateCalendar ();
    });
});

var slides = document.querySelector('.slides'),
    slide = document.querySelectorAll('.slides li'),
    currentIdex = 0, // 마지막이면 처음으로 돌려야 하는 기준으로 사용할..
    slideCount = slide.length,
    prevBtn = document.getElementById('prev'),
    nextBtn = document.getElementById('next'),
    slideWidth =300,
    slideMargin = 30;

    slides.style.width = (slideWidth+slideMargin)*slideCount+"px";

    function moveSlide(num){
        slides.style.left = -num *330 + "px";
        currentIdex = num;
    }

    nextBtn.addEventListener('click',function(){
        if(currentIdex<slideCount-4){
            moveSlide(currentIdex + 1);
        }else{
            moveSlide(0);
        }
    });

    prevBtn.addEventListener('click',function(){
        if(currentIdex>0)
        moveSlide(currentIdex -1);
    });

    

    /*page5*/

    var ynoti = document.getElementById('ynoti');
    var yqna = document.getElementById('yqna');

    window.addEventListener('scroll',function(){
        var value = window.scrollY
        
        if(value < 836){
            ynoti.style.animation = "disappear 1.5s ease-in-out";
            yqna.style.animation = "disappear2 2s ease-in-out";
        }
        if(value > 837){
            ynoti.style.animation = "slide 1.5s ease-in-out";
            yqna.style.animation = "slide2 2s ease-in-out";
        }
    })