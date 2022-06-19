<?php include 'header.php'?>
<?php include 'headernav.php'?>
<?php include 'nav.php'?>
<script type="text/javascript">
	$(document).ready(function() {
		var x = '<?php echo($total_price); ?>';
	console.log(x);
	});
	
</script>
<div id="popover_content_wrapper" >
				<span id="cart_details"></span>
				<div align="right">
				<form action="https://www.example.com/payment/success/" method="POST"> 
					<script    src="https://checkout.razorpay.com/v1/checkout.js"    data-key="rzp_test_6Kr8Rp9Hm0V0fp" // Enter the Key ID generated from the Dashboard    data-amount="" // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise    data-currency="INR"   //This is a sample Order ID. Pass the `id` obtained in the response of the previous step.    data-buttontext="Pay with Razorpay"    data-name="Acme Corp"    data-description="Test transaction"    data-image="https://example.com/your_logo.jpg"    data-prefill.name="Gaurav Kumar"    data-prefill.email="gaurav.kumar@example.com"    data-prefill.contact="9999999999"    data-theme.color="#F37254"></script><input type="hidden" custom="Hidden Element" name="hidden"></form>
				

					<a href="#" class="btn btn-default" id="clear_cart">
					<span class="glyphicon glyphicon-trash"></span> Clear
					</a>
				</div>
			</div>

			



<script>  
$(document).ready(function(){

	load_product();

	load_cart_data();
    
	function load_product()
	{
		$.ajax({
			url:"fetch_item.php",
			method:"POST",
			success:function(data)
			{
				$('#display_item').html(data);
			}
		});
	}

	function load_cart_data()
	{
		$.ajax({
			url:"fetch_cart.php",
			method:"POST",
			dataType:"json",
			success:function(data)
			{
				$('#cart_details').html(data.cart_details);
				$('.total_price').text(data.total_price);
				$('.badge').text(data.total_item);
			}
		});
	}

	$('#cart-popover').popover({
		html : true,
        container: 'body',
        content:function(){
        	return $('#popover_content_wrapper').html();
        }
	});

	$(document).on('click', '.add_to_cart', function(){
		var product_id = $(this).attr("id");
		var product_name = $('#name'+product_id+'').val();
		var product_price = $('#price'+product_id+'').val();
		var product_quantity = $('#quantity'+product_id).val();
		var action = "add";
		if(product_quantity > 0)
		{
			$.ajax({
				url:"action.php",
				method:"POST",
				data:{product_id:product_id, product_name:product_name, product_price:product_price, product_quantity:product_quantity, action:action},
				success:function(data)
				{
					load_cart_data();
					alert("Item has been Added into Cart");
				}
			});
		}
		else
		{
			alert("lease Enter Number of Quantity");
		}
	});

	$(document).on('click', '.delete', function(){
		var product_id = $(this).attr("id");
		var action = 'remove';
		if(confirm("Are you sure you want to remove this product?"))
		{
			$.ajax({
				url:"action.php",
				method:"POST",
				data:{product_id:product_id, action:action},
				success:function()
				{
					load_cart_data();
					$('#cart-popover').popover('hide');
					alert("Item has been removed from Cart");
				}
			})
		}
		else
		{
			return false;
		}
	});

	$(document).on('click', '#clear_cart', function(){
		var action = 'empty';
		$.ajax({
			url:"action.php",
			method:"POST",
			data:{action:action},
			success:function()
			{
				load_cart_data();
				$('#cart-popover').popover('hide');
				alert("Your Cart has been clear");
			}
		});
	});
    
});

</script>

<?php include 'footer.php'?>
