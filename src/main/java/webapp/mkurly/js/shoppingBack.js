	function totalfc(){
				var tot=0;
				var tot1=0;
				
		$("input[name=onecheck]:checked").each(function(){
				var cou=Number($(this).closest(".item").find(".gcount1").val()); 
				var pri=Number($(this).closest(".item").find(".pinput").val());
				
				tot1=cou*pri;
				$(this).closest(".item").find(".pinput1").val(tot1);
				tot += cou * pri;
				$(this).closest("main").find(".wprice").val(tot);
				$(this).closest("main").find(".tprice1").val(tot);
		});
	}
$(document).ready(function(){
    var jbOffset = $('.shipping-address-and-price-area').offset();
    $(window).scroll(function(){
        if($(document).scrollTop() >jbOffset.top-115.99){
            $('.shipping-address-and-price-area').addClass('shipping-address-and-price-area-onetop');
        }else{
            $('.shipping-address-and-price-area').removeClass('shipping-address-and-price-area-onetop');
        }
    });
}, 3000);

$(document).ready(function(){
		totalfc();
		/*$(".item-all-choice-delete-area").on("click", ".check-btn-input", function () {
		    $(this).parents(".item").find('input').prop("checked",true);
			        totalfc();
	    });*/
		$(".item-all-choice-delete-area").on('click','.check-btn-input',function(){
			    if($('#allcheck').is(':checked')){
			       $('.item-btn-input').prop('checked',true);
				    }else{
			       $('.item-btn-input').prop('checked',false);    
				$(this).closest("main").find(".wprice").val(0);
				$(this).closest("main").find(".tprice1").val(0);
			    }
			    totalfc();
			});

		/*$(".item").on("click", ".item-btn-area", function() {
		    
		        totalfc();
		    $(".item .item-btn-input").each(function(){
		            if($('.item-btn-input').is(':checked')){
				       $('.item-btn-input').prop('checked',true);
				    }else{
				       $('.item-btn-input').prop('checked',false);
				    }
		        
		    });*/
		    $('.item').on('click','.item-btn-area',function(){
			 totalfc();
				
				    if($('input[class=item-btn-input]:checked').length==$('.item-btn-input').length){
				        $('#allcheck').prop('checked',true);
				       	
				    }else{
				       $('#allcheck').prop('checked',false);
				       totalfc();
				       if($('input[class=item-btn-input]:checked').length==0){
						$(this).closest("main").find(".wprice").val(0);
						$(this).closest("main").find(".tprice1").val(0);
						}
				    }
				});
		});
		$(document).ready(function(){
			
			$('.product-quantity-up').on("click", function(){
					
				let quantity = $(this).parent('div').find('#gcount').val();
				$(this).parent("div").find("#gcount").val(++quantity);
				totalfc();
				
			});
	
			$(".product-quantity-down").on("click", function(){
			
					let quantity1 = $(this).parent("div").find("#gcount").val();
					if(quantity1 > 1){
						$(this).parent("div").find("#gcount").val(--quantity1);
						totalfc();
						}
			});
		});
		