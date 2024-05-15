// tab-menu
$(function(){
  $('.tabcontent > div').hide();
  $('.tabnav a').click(function () {
    $('.tabcontent > div').hide().filter(this.hash).fadeIn();
    $('.tabnav a').removeClass('active');
    $(this).addClass('active');
    return false;
  }).filter(':eq(0)').click();
  
  $(".tabnav #review").click(function(){
	  var pid = $("#pid").text();
	  $.ajax({
		url:"../boardProduct/reviewList?pid=" + pid,
		method:"get",
		contentType : "application/json; charset:UTF-8",
		success: function(data){
			$("#tab03").remove();
			$("#tabcontent03").append(data);
		}
	});
  });
  
  $(".tabnav #qna").click(function(){
	  var pid = $("#pid").text();
	  $.ajax({
		url:"../boardProduct/qnaList?pid=" + pid,
		method:"get",
		contentType : "application/json; charset:UTF-8",
		success: function(data){
			$("#tab04").remove();
			$("#tabcontent04").append(data);
		}
	});
  });
});