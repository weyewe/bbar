$(document).ready(function(){
 
	$( "#bid-wrapper" ).on( "submit", ".ajaxform", function() {
		var $this = $(this);
		var destination = $(this).attr('action');
		var $form_container = $("#bid-wrapper");

		$form_container.showLoading(); 


		$.ajax({
			url: destination,
			type: "POST",
			data: $(this).serialize(),
			dataType: 'script',
			success: function(response){ 
				// console.log("Banzai, we are awesome ")
				$form_container.hideLoading();  
				// console.log("the form container");
				// console.log( $form_container );
				// console.log("Wtf, this form container isn't responding");
			}
		});
		return false;
		
		 
	});
	
	$( "#bid-wrapper" ).on( "click", ".ajaxlink", function() {
		var $this = $(this);
		// console.log("The this value");
		// console.log( $this ) ;
		var destination = $(this).attr('href');
		var $form_container = $("#bid-wrapper");
		
		$form_container.showLoading(); 
		
		// console.log("The destination: ");
		// console.log( destination );
		
		$.ajax({
			url: destination,
			type: "GET", 
			dataType: 'script',
			success: function(response){ 
				// console.log("Banzai, we are awesome ")
				$form_container.hideLoading();  
				// console.log("the form container");
				// console.log( $form_container );
				// console.log("Wtf, this form container isn't responding");
			}
		});
		return false;
		
		
	});
	
	
});