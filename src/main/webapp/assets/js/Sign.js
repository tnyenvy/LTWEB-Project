function signup() {	
    const email = document.getElementById("signup-email").value;
    const password = document.getElementById("signup-password").value;
	const name = document.getElementById("signup-fullName").value;
	if (!name) 
	{
		document.getElementById("signup-invalid-name").hidden = false;
	}
	else
	{
		document.getElementById("signup-invalid-name").hidden = true;
	}
    if (!email) 
	{
		document.getElementById("signup-invalid-email").innerHTML = "Vui lòng nhập email";
		document.getElementById("signup-invalid-email").hidden = false;
    }
	else
	{
		document.getElementById("signup-invalid-email").hidden = true;
	}
	if (!password) 
	{
		document.getElementById("signup-invalid-password").innerHTML = "Vui lòng nhập mật khẩu";	
		document.getElementById("signup-invalid-password").hidden = false;
	}
	else if (password.length < 6 || password.length > 15) 
	{
			document.getElementById("signup-invalid-password").innerHTML = "Mật khẩu phải nằm trong khoảng 6 - 15 kí tự";	
			document.getElementById("signup-invalid-password").hidden = false;
	}
	else
	{
			document.getElementById("signup-invalid-password").hidden = true;
	}
	if (!document.getElementById("signup-invalid-name").hidden 
	|| !document.getElementById("signup-invalid-email").hidden 
	|| !document.getElementById("signup-invalid-password").hidden) 
	{
	    return;
	}
    // Gửi yêu cầu tới máy chủ (thay URL bằng API thực tế)

	fetch("/ConvenienceStore/Signup", {
	    method: "POST",
	    headers: {
	        "Content-Type": "application/x-www-form-urlencoded"
	    },
	    body: `email=${email}&password=${password}&name=${name}`
	})
	.then(response => response.json())
	.then(data => {
	    if (data.success) {
			alert(data.message);
			window.location.href = "./signin.html";
	    } 
		else 
		{
			if (data.message === "0")
			{
	        	document.getElementById("signup-invalid-email").hidden = false;
				document.getElementById("signup-invalid-email").innerHTML = "Email đã tồn tại, vui lòng sử dụng email khác";
			}	
			else
			{
				document.getElementById("signup-invalid-password").hidden = false;
				document.getElementById("signup-invalid-password").innerHTML = data.message;
			}	
	    }
	})
	.catch(error => {
	    console.error("Error:", error);
	});
}
//document.getElementById("signin-form").addEventListener("submit", login);