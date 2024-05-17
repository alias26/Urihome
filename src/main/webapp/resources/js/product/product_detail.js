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
  
  $("#insertCart").click(function(){
  	var pid = $("#pid").text();
  	var pname = $("#pname").val();
  	var pprice = $("#pprice").val(); 
  	var pbuyAmount = $("#pbuyAmount").val();
  	console.log(pbuyAmount);
  	var cartItem = {
  	    pid: pid,
   	    pname: pname,
  	    pprice: pprice,  
  	    pbuyAmount: pbuyAmount
  	};
  	
  	cartItem = JSON.stringify(cartItem);
      $.ajax({
          url: "../cart/addCartItem", 
          method: "POST",
          data: cartItem,
          contentType: "application/json",
          success: function(response) {
          	
               document.location.href="../cart/cartView";   
          }
      
      })
  });
  	
  $(".plus").click(function() {
	  var pprice = parseInt($("#pprice").text()); 
      var value = parseInt($(this).parent("div").find("input").val());
      $(this).parent("div").find("input").val(++value);
      $(totalPrice).text(pprice * value);




   });
   $(".minus").click(function() {
		  var pprice = parseInt($("#pprice").text()); 
	      var value = parseInt($(this).parent("div").find("input").val());
	      if(value>1){
	      $(this).parent("div").find("input").val(--value);
	      $(totalPrice).text(pprice * value);
	      }
   });
  
  $("#addCart").click(function(){
	   	var pid = $("#pid").text();
	   	console.log(pid);
	   	var pname = $("#pname").text();
	   	console.log(pname);
	   	var pprice = $("#pprice").text(); 
	   	var pbuyAmount = $("#pbuyAmount").val();
	   	
	   	var cartItem = {
	   	    pid: pid,
	    	pname: pname,
	   	    pprice: pprice,  
	   	    pbuyAmount: pbuyAmount
	   	};
	   	
	   	console.log(cartItem);
	   	cartItem = JSON.stringify(cartItem);
	       $.ajax({
	           url: "../cart/addCartItem", 
	           method: "POST",
	           data: cartItem,
	           contentType: "application/json",
	           success: function(response) {
	      	  const modal=new bootstrap.Modal("#addCartModal");
	      	  modal.show();
	           }
	      
	       });
	  });
  
  $("#buyNow").click(function(){
	   	var pid = $("#pid").text();
	   	var pname = $("#pname").text();
	   	var pprice = $("#pprice").text(); 
	   	var pbuyAmount = $("#pbuyAmount").val();  	
	   	location.href= "../order/orderNowForm?pid="+pid+"&pbuyAmount="+pbuyAmount;
       
	  });
});
