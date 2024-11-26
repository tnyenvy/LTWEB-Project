function login() {	
    const email = document.getElementById("formSigninEmail").value;
    const password = document.getElementById("formSigninPassword").value;
    // Kiểm tra rỗng
    if (!email) 
	{
		document.getElementById("signin-invalid-email").hidden = false;
    }
	else
	{
		document.getElementById("signin-invalid-email").hidden = true;
	}
	if (!password) 
	{
		document.getElementById("signin-invalid-password").innerHTML = "Vui lòng nhập mật khẩu";
		document.getElementById("signin-invalid-password").hidden = false;
	}
	else
	{
		document.getElementById("signin-invalid-password").hidden = true;
	}
	if (!email || !password) 
	{
	    return;
	}
    // Tạo đối tượng dữ liệu JSON
    const loginData = {
        email: email,
        password: password
    };

    // Gửi yêu cầu tới máy chủ (thay URL bằng API thực tế)

	fetch("/ConvenienceStore/Login?action=login", {
	    method: "POST",
	    headers: {
	        "Content-Type": "application/x-www-form-urlencoded"
	    },
	    body: `email=${email}&password=${password}&remember=${document.getElementById("flexCheckDefault").checked}`
	})
	.then(response => response.json())
	.then(data => {
	    if (data.success) {
			window.location.href = "./index.html";
	    } else {
	        document.getElementById("signin-invalid-password").hidden = false;
			document.getElementById("signin-invalid-password").innerHTML = "Tên đăng nhập hoặc mật khẩu sai";		
	    }
	})
	.catch(error => {
	    console.error("Error:", error);
	});
}
//document.getElementById("signin-form").addEventListener("submit", login);