$(function() {
	$("#checkAll").click(function() {
		if ($("#checkAll").is(":checked")) {
			$("[name=order-checkbox]").prop("checked", true);
			 getTotalPrice();
		
		} else {
			$("[name=order-checkbox]").prop("checked", false);
			getTotalPrice();
		}
		var totalPrice = $(totalPrice);
	}); 
	$("[name=order-checkbox]").click(
					function() {
						getTotalPrice();
						if ($("[name=order-checkbox]:checked").length === $("[name=order-checkbox]").length) {
							$("#checkAll").prop("checked", true);
							
						} else {
							$("#checkAll").prop("checked", false);
						}
					});
	
	$(".cart-number").on("change", function(){
		var pid = $(this).parent("div").find("input[name=pid]").val();
		var pbuyAmount = parseInt($(this).val());
		var pstock = parseInt($(this).parent("div").find("input[name=pstock]").val());
		
		var ppriceId= "#pprice"+pid;
		var pprice = parseInt($(ppriceId).text());
		var ptPriceId = "#ptPrice" + pid;
		var ptPrice = $(ptPriceId);
		
		if(pbuyAmount > pstock){
			$(this).prop("value", pstock);
			ptPrice.html(pprice * pstock);
		}
		else if(pbuyAmount < 1){
			$(this).prop("value", 1);
			ptPrice.html(pprice * 1);
		}
		else{
			ptPrice.html(pprice * pbuyAmount);
		}
		getTotalPrice();
		var cart = {
				"pid":pid,
				"pbuyAmount":pbuyAmount,
			}
			
			$.ajax({
				url : "updateCartItem",
				type : "POST",
				contentType : "application/json",
				data : JSON.stringify(cart),
				success : function(data) {
					console.log(data);
				}
		});
	})

	$(".plus").click(function() {
		var pid = $(this).parent("div").find("input[name=pid]").val();
		var pbuyAmount = parseInt($(this).parent("div").find("input[name=pbuyAmount]").val());
		var pstock = $(this).parent("div").find("input[name=pstock]").val();
		var ppriceId= "#pprice"+pid;
		var pprice = parseInt($(ppriceId).text());
		var ptPriceId = "#ptPrice" + pid;
		var ptPrice = $(ptPriceId);
		
		if(pbuyAmount < pstock){
			$(this).parent("div").find("input[name=pbuyAmount]").val(++pbuyAmount);
			ptPrice.html(pprice * pbuyAmount);
			
			getTotalPrice();
			var cart = {
				"pid":pid,
				"pbuyAmount":pbuyAmount,
			}
			
			$.ajax({
				url : "updateCartItem",
				type : "POST",
				contentType : "application/json",
				data : JSON.stringify(cart),
				success : function(data) {
					console.log(data);
				}
			});
		}
	});
	$(".minus").click(function() {
		var pid = $(this).parent("div").find("input[name=pid]").val();
		var pbuyAmount = parseInt($(this).parent("div").find("input[name=pbuyAmount]").val());
		var pstock = $(this).parent("div").find("input[name=pstock]").val();
		var ppriceId= "#pprice"+pid;
		var pprice = parseInt($(ppriceId).text());
		var ptPriceId = "#ptPrice" + pid;
		var ptPrice = $(ptPriceId);
		
		if (pbuyAmount > 1) {
			$(this).parent("div").find("input[name=pbuyAmount]").val(--pbuyAmount);
			ptPrice.html(pprice * pbuyAmount);
			getTotalPrice();
			var cart = {
				"pid":pid,
				"pbuyAmount":pbuyAmount
			}
			
			$.ajax({
				url : "updateCartItem",
				type : "POST",
				contentType : "application/json",
				data : JSON.stringify(cart),
				success : function(data) {
					console.log(data);
				}
			});
		}

	});
	 $(".AllProdcut_order").click(function(){
		  var pidList = $(".list-unstyled").children(".cart-items").find("input[name=pid]");
		  if(pidList.length==0){
			  const modal=new bootstrap.Modal("#selectOrder");
			  modal.show();
		  }else{
			  location.href="${pageContext.request.contextPath}/order/orderForm";
		  }
	      })
	});

function removeCart(pid){
 	var cart = {"pid":pid}
 	cart= JSON.stringify(cart);
 	var cartPid = "#" + pid;
 	
     $.ajax({
         url: "deleteCart", 
         method: "POST",
         data: cart,
         contentType: "application/json",
         success: function(response) {
         	$(cartPid).remove();
         	getTotalPrice();
         }
     
     });
}

function getTotalPrice(){
	var ptPrice = $(".list-unstyled").children(".cart-items").find(".ptPrice");
	var cartCheckBox = $(".list-unstyled").children(".cart-items").find("input[name=order-checkbox]");
	var totalPrice = 0;
	var deliveryFee = 3000;
	var checked=0;
	
	for(var i = 0; i < ptPrice.length; i++){
		if(cartCheckBox[i].checked){
			totalPrice += parseInt(ptPrice[i].innerText);
			checked++;
		}
	}
	
	if(totalPrice >= 50000 || checked==0){
		deliveryFee=0;
	}
	
	$("#totalPrice").text(totalPrice);
	$("#deliveryFee").text(deliveryFee);
	$("#totalCartPrice").text(totalPrice+deliveryFee);
	
}

function getSelectCartOrder(){
	var pidList = $(".list-unstyled").children(".cart-items").find("input[name=pid]");
	var cartCheckBox = $(".list-unstyled").children(".cart-items").find("input[name=order-checkbox]");
	var selected = []
	
	for(var i = 0; i < pidList.length; i++){
		var select = []
		select.push(pidList[i].value);
		if(cartCheckBox[i].checked){
			select.push('Y');
		}else{
			select.push('N');
		}
		selected.push(select);
	}
	
	if(selected.length == 0){
		const modal= new bootstrap.Modal("#selectOrder")
		modal.show();
		return;
	}

	
	 $.ajax({
         url: "../order/selectOrder", 
         method: "POST",
         traditional : true,
         data: {
        	 selected:selected
         },
         success: function(response) {
        	 location.href="../order/orderForm?check=checked"
         }
     });
}