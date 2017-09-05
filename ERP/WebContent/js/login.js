$(document).ready(function() {
		$("#logInSubmit").click(function() {
			
			if($('#loginForm').parsley().validate()){
				$.post("logInProcess", {
					
					uname : $("#uname").val(),
					upass : $("#upass").val(),
					userType : $("#userType").val()
				}, function(data, status, xhr) {
					var json = JSON.parse(data)
					console.log(json.url);

					if (json.url != "failed") {
						window.location.href = json.url;
					} else {
						$("#errorLabel").html(json.validationMessage);
						$("#errorLabel").css("display", "block");

					}

				});
			}else{
				$("#errorLabel").css("display", "none");
			};
			
																		       
		});
	});