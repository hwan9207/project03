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
