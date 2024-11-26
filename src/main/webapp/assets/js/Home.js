let products = []; //JSON danh sách sản phẩm
let user = {};
async function getUser()
{	
	if (Object.keys(user).length === 0)
	{
		await fetch(`/ConvenienceStore/Login?action=${encodeURIComponent('{"get"}')}`, {
			    method: "GET",
			    headers: {
			        "Content-Type": "application/x-www-form-urlencoded"
			    },
			})
			.then(response => response.json())
			.then(data => {
			    if (data.success) {
					user=data.message;
			    }
			})
			.catch(error => {
			    console.error("Error:", error);
			});
		document.getElementById('address-text').innerHTML = "Giao tới: ";
	}
	else
	{
		if (!user.address)
		{
			document.getElementById('address-text').innerHTML = "Giao tới: " + user.address;
		}
		else
		{
			document.getElementById('address-text').innerHTML = "Giao tới: ";
		}
	}
}
async function showAddress()
{
	await getData();
	if (!Array.isArray(products) || products.length === 0)
		return;
	await getUser();
}
async function getData()
{	
	if (products.length === 0)
	{
		try 
		{
			let response = await fetch('/ConvenienceStore/DetailServlet?action=product');
			if (!response.ok) 
			{
				alert("Phản hồi thất bại: " + response.statusText);
			}
			response = await fetch('/ConvenienceStore/DetailServlet?action=list');
			if (!response.ok) 
			{
			     alert("Phản hồi thất bại: " + response.statusText);
			}
			else
			{
				products = await response.json();
				if (!Array.isArray(products) || products.length === 0)
				{
					alert('Đã xảy ra lỗi không nhận được dữ liệu, vui lòng làm mới trang');
				}
			}
		}
		catch (error) 
		{
		     alert('Đã xảy ra lỗi nhận dữ liệu sản phẩm: ' + error);
		}
	}	
}
function scrollCategory(name) //Hàm tự động chuyển đến danh mục sản phẩm chỉ định
{
	const element = document.getElementById(name);
	if (element) 
	{
	    element.scrollIntoView({ behavior: 'smooth' });
	} 
	else 
	{
	    alert("Đã xảy ra sự cố");
	}
}

async function loadProductDetail(id) //Hàm khi nhấn vào từng sản phẩm, sẽ mở bảng quickview
{
	await getData();
	if (!Array.isArray(products) || products.length === 0)
		return;
	for (var i = 0; i < products.length; i++)
	{
		if (products[i].id === id)
		{
	        document.getElementById('item-name').innerHTML = products[i].name;
			document.getElementById('item-tag').innerHTML = Tag(products[i].tag);
			document.getElementById('item-price').innerHTML = products[i].price + " VNĐ";
			document.getElementById('item-id').innerHTML = products[i].id;
			document.getElementById('item-quantity').innerHTML = products[i].quantity;
			document.getElementById('item-type').innerHTML = Type(products[i].type);
			document.getElementById('modal-quantity').value = "1";
			document.querySelector('#img-zoom').src = products[i].image;
			document.querySelector('.zoom').style.backgroundImage = "url("+products[i].image+")";
			if (products[i].price === 0)
			{
				document.querySelector('#is-free').hidden = false;
			}
			else
			{
				document.querySelector('#is-free').hidden = true;
			}
			if (products[i].quantity === 0)
			{
				document.querySelector('#is-sold-out').hidden = false;
				document.querySelector('#is-free').hidden = true;
				document.getElementById('item-btn').disabled = true;
				document.getElementById('item-btn').classList.remove('btn-primary');
				document.getElementById('item-btn').classList.add('btn-secondary');					
			}
			else
			{
				document.querySelector('#is-sold-out').hidden = true;	
				document.getElementById('item-btn').disabled = false;				
				document.getElementById('item-btn').classList.remove('btn-secondary');
				document.getElementById('item-btn').classList.add('btn-primary');					
			}
			const quickViewModal = new bootstrap.Modal(document.getElementById('quickViewModal'));
			quickViewModal.show();
			break;
		}
	}
}

function Tag(i)
{
	switch(i) 
	{
	     case 0:
	    	 return "Thực phẩm tươi sống";
	     case 1:
	    	 return "Thực phẩm chế biến sẵn";
	     case 2:
	    	 return "Đồ uống";
	     case 3:
	    	 return "Đồ uống có cồn";
	     case 4:
	    	 return "Đồ ăn nhẹ và đồ ngọt";
	     case 5:
	    	 return "Hóa mỹ phẩm";
	     case 6:
	    	 return "Đồ dùng gia đình";
	     case 7:
	    	 return "Văn phòng phẩm";
	     default:
	    	 return "Khác";
	  }
}

function Type(i)
{
	switch(i) 
	{
	     case 0:
	    	 return "Chai";
	     case 1:
	    	 return "Gói";
	     case 2:
	    	 return "Thùng";
	     case 3:
	    	 return "Lon";
	     case 4:
	    	 return "Hộp";
	     default:
	    	 return "Khác";
	     }
}
function zooming(event) //Hàm zoom ở modal quickview
{
    const zoomDiv = document.querySelector('.zoom');
    const x = event.clientX - zoomDiv.getBoundingClientRect().left; // Tọa độ x chuột trong div
    const y = event.clientY - zoomDiv.getBoundingClientRect().top; // Tọa độ y chuột trong div
    const width = zoomDiv.offsetWidth; // Chiều rộng của div
    const height = zoomDiv.offsetHeight; // Chiều cao của div

    // Tính toán tỷ lệ phóng to (có thể điều chỉnh tỷ lệ theo ý muốn)
    const scale = 2; // Tỷ lệ phóng to

    // Cập nhật thuộc tính background-size và background-position
    zoomDiv.style.backgroundSize = `${width * scale}px ${height * scale}px`;
    zoomDiv.style.backgroundPosition = `${-x * scale + width / 2}px ${-y * scale + height / 2}px`;
}

function resetZoom() //Hủy zoom
{
    const zoomDiv = document.querySelector('.zoom');
    zoomDiv.style.backgroundSize = 'cover'; // Đặt lại kích thước về cover
    zoomDiv.style.backgroundPosition = 'center'; // Đặt lại vị trí về center
}
let productCount = new Array(0,0,0,0,0,0,0,0); //Đếm số lượng sản phẩm của từng danh mục có trong csdl
let productShowMax = new Array(10,10,10,10,10,10,10,10); //Số lượng sản phẩm có thể hiển thị tối đa trong từng danh mục
async function loadAllProduct() 
{
	await getData();
	if (!Array.isArray(products) || products.length === 0)
	{
		alert("Dữ liệu rỗng: " + products.length);
		return;
	}
	for (var i = 0; i < products.length; i++)
	{
		productCount[products[i].tag]++;
		if (document.getElementById("productContainer" + products[i].tag).querySelectorAll(":scope > div").length < productShowMax[products[i].tag])  
		{ //nếu số lượng sản phẩm trên thẻ div ít hơn số lượng hiển thị tối đa thì tiến hành thêm thẻ div con
			if (products[i].quantity === 0)
			{ //trường hợp hết hàng thì thêm mác "Hết hàng"
				document.getElementById("productContainer" + products[i].tag).innerHTML 
				+= createProductCardHTML(products[i].id,products[i].name,products[i].price,products[i].image,'','Hết hàng','danger','disabled','secondary');
			}
			else if (products[i].price === 0)
			{ //trường hợp còn hàng và kèm theo giá = 0 thì thêm mác "Miễn phí"
				document.getElementById("productContainer" + products[i].tag).innerHTML 
				+= createProductCardHTML(products[i].id,products[i].name,products[i].price,products[i].image,'','Miễn phí','success','','primary');
			}
			else
			{
				document.getElementById("productContainer" + products[i].tag).innerHTML 
				+= createProductCardHTML(products[i].id,products[i].name,products[i].price,products[i].image,'hidden','','primary','','primary');
			}
		}				
	}
	for (var i = 0; i <= 7; i++)
	{ //Kiểm tra nếu số lượng hàng có trong csdl nhiều hơn hiển thị tối đa sẽ hiển thị nút "Hiển thị thêm x sản phẩm" ngược lại ẩn
		if (productCount[i] > productShowMax[i])
			document.getElementById("Container" + i).innerHTML +=createExpandDiv(productCount[i]-productShowMax[i],i);
		else
			productShowMax[i] = productCount[i];
	}
}
function createProductCardHTML(id,name,price,img,hidden,badge,danger,disabled,primary) //div thẻ sản phẩm từng danh mục
{
        return `
		<div class="col" id="item-id-${id}">
			<div class="card card-product">
				<div class="card-body">
				     <div class="text-center position-relative">
				          <div class="position-absolute top-0 start-0" ${hidden}>
				           		<span class="badge bg-${danger}">${badge}</span>
				          </div>
				         <div onclick="loadProductDetail(${id})"><img src="${img}" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" /></div>
				                   </div>
								   <div onclick="loadProductDetail(${id})">
				             <h2 class="fs-6"><span class="text-inherit text-decoration-none">${name}</span></h2>
							 </div>
				                   <div class="d-flex justify-content-between align-items-center mt-3">
				                     <div>
				                       <span class="text-dark">${price} VND</span>
				                     </div>
									<div>
				                       <div class="btn btn-${primary} btn-sm ${disabled}" onclick="addCart(${id})">
				                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus">
				                           <line x1="12" y1="5" x2="12" y2="19"></line>
				                           <line x1="5" y1="12" x2="19" y2="12"></line>
				                         </svg>
				                         Thêm
				                       </div>
				                     </div>
				              		</div>
				                 </div>
				               </div>
				             </div>`;
}
function createExpandDiv(left, id) //Thẻ mở rộng thêm
{
	return `
	<div class="d-flex justify-content-center align-items-center mt-3" id="expand-${id}">
	               		<div class="btn btn-outline-primary btn-lg" id="expand-text-${id}" onclick="loadProductContainer(${id})">
	               			<svg width="24" height="24" xmlns="http://www.w3.org/2000/svg">
	    						<polygon points="12,18 6,6 18,6" fill="green" />
							</svg>
	               		Hiển thị thêm ${left} sản phẩm
	               		</div>
	               </div>`;
}
async function loadProductContainer(id) //Hàm này sẽ hiển thị thêm những sản phẩm khi ấn nút "Hiển thị thêm"
{
	await getData();
	if (!Array.isArray(products) || products.length === 0)
		return;
	productShowMax[id]+=10;
	for (var i = 0; i < products.length; i++)
	{
		if (document.getElementById("productContainer" + id).querySelectorAll(":scope > div").length < productShowMax[id])
		{
			if (products[i].tag === id && !document.getElementById("item-id-" + products[i].id)) //kiểm tra id đã có trên danh mục chưa?
			{
				if (products[i].quantity === 0)
				{
					document.getElementById("productContainer" + products[i].tag).innerHTML 
					+= createProductCardHTML(products[i].id,products[i].name,products[i].price,products[i].image,'','Hết hàng','danger','disabled','secondary');
				}
				else if (products[i].quantity === 0)
				{
					document.getElementById("productContainer" + products[i].tag).innerHTML 
					+= createProductCardHTML(products[i].id,products[i].name,products[i].price,products[i].image,'','Miễn phí','success','','primary');
				}
				else
				{
					document.getElementById("productContainer" + products[i].tag).innerHTML 
					+= createProductCardHTML(products[i].id,products[i].name,products[i].price,products[i].image,'hidden','','primary','','primary');
				}
			}
		}
		else
		{
			break;
		}					
	}
	if (document.getElementById("productContainer" + id).querySelectorAll(":scope > div").length >= productCount[id]) //Kiểm tra nếu vẫn còn sản phẩm chưa hiển thị
		document.getElementById("expand-" + id).remove(); //Đã hiển thị hết thì xóa nút
	else if (productCount[id] > productShowMax[id]) 
	{ //Vẫn còn thì giữ nguyên và thay đổi số lượng còn lại
		const left = productCount[id] - productShowMax[id];
		document.getElementById("expand-text-" + id).innerHTML = "Hiển thị thêm " + left + " sản phẩm";
	}
	if (productCount[id] < productShowMax[id])
		productShowMax[id] = productCount[id];
}
function isSignin()
{
	getUser();
	if (Object.keys(user).length === 0)
	{
		window.location.href = "./signin.html";
	}
	else
	{
		window.location.href = "./userorder.html";
	}
}