var Cart = JSON.parse(localStorage.getItem("Cart")) || [];
async function getCartbefore() 
{
	Cart.forEach(product => {
	        addCart(product.id,product.quantity,0);
	});
}
function addToCartSession(product) 
{
    const existingProduct = Cart.find(item => item.id === product.id);
    
    if (existingProduct) {
        existingProduct.quantity += product.quantity;
    } else {
        Cart.push(product);
    }
    
    // Lưu giỏ hàng cập nhật vào localStorage
    localStorage.setItem("Cart", JSON.stringify(Cart));
}
async function addCart(id,quantity=1,update=1)
{
	if (!document.getElementById("item-cart-"+id))
	{	
		try 
		{
			const response = await fetch('/ConvenienceStore/DetailServlet?action=list');
		        
			if (!response.ok) 
			{
		   		throw new Error("Network response was not ok " + response.statusText);
			}
			const data = await response.json();				
			if (Array.isArray(data) && data.length > 0) 
			{
				for (var i = 0; i < data.length; i++)
				{
					if (data[i].id === id)
					{
						document.getElementById("cart-list").innerHTML 
						+= createCartDetail(data[i].id,data[i].name,data[i].image,data[i].price,quantity);
						if (update === 1)
						{
							product = {
						    	id: id,
						    	quantity: quantity
							};	
						addToCartSession(product);
						}
						break;
					}
				}
			}			
		} 
		catch (error) 
		{
		     alert('Đã xảy ra lỗi giỏ hàng 2: ' + error);
		}
	}
	else
	{
		const product = Cart.find(item => item.id === id);
		product.quantity += quantity;
		document.getElementById("cart-quantity-"+id).value = product.quantity;
		localStorage.setItem("Cart", JSON.stringify(Cart));
	}	
}
async function addCart2()
{
	if (!document.getElementById("item-cart-"+parseInt(document.getElementById("item-id").innerHTML)))
	{
	try {
		const response = await fetch('/ConvenienceStore/DetailServlet?action=list');
		        
		if (!response.ok) {
		   throw new Error("Network response was not ok " + response.statusText);
		}
		const data = await response.json();				
		if (Array.isArray(data) && data.length > 0) 
		{
			for (var i = 0; i < data.length; i++)
			{
				if (data[i].id === parseInt(document.getElementById("item-id").innerHTML))
				{
					document.getElementById("cart-list").innerHTML 
					+= createCartDetail(data[i].id,data[i].name,data[i].image,data[i].price,parseInt(document.getElementById("modal-quantity").value));
					product = {
						id: parseInt(document.getElementById("item-id").innerHTML),
						quantity: parseInt(document.getElementById("modal-quantity").value)
					};
					addToCartSession(product);
					break;
				}
			}	
			}			
		    } catch (error) {
		        alert('Đã xảy ra lỗi hiển thị 4: ' + error);
		    }	 
		}
		else
		{
			const product = Cart.find(item => item.id === parseInt(document.getElementById("item-id").innerHTML));
			product.quantity += parseInt(document.getElementById("modal-quantity").value);
			document.getElementById("cart-quantity-"+parseInt(document.getElementById("item-id").innerHTML)).value = product.quantity;
			localStorage.setItem("Cart", JSON.stringify(Cart));
		}
}
function createCartDetail(id,name,img,price,quantity)
{
	return `
	<li class="list-group-item py-3 ps-0 border-top border-bottom" id="item-cart-${id}">
	                     <!-- row -->
	                     <div class="row align-items-center">
	                        <div class="col-6 col-md-6 col-lg-7">
	                           <div class="d-flex">
	                              <img src="${img}" alt="Ecommerce" class="icon-shape icon-xxl" />
	                              <div class="ms-3">
	                                 <!-- title -->
	                                 <div class="text-inherit" onclick="loadProductDetail(${id})">
	                                    <h6 class="mb-0">${name}</h6>
	                                 </div>
	                                
	                                 <!-- text -->
	                                 <div class="mt-2 small lh-1">
	                                    <div class="text-decoration-none text-inherit" onclick="deleteCart(${id})">
	                                       <span class="me-1 align-text-bottom">
	                                          <svg
	                                             xmlns="http://www.w3.org/2000/svg"
	                                             width="14"
	                                             height="14"
	                                             viewBox="0 0 24 24"
	                                             fill="none"
	                                             stroke="currentColor"
	                                             stroke-width="2"
	                                             stroke-linecap="round"
	                                             stroke-linejoin="round"
	                                             class="feather feather-trash-2 text-success">
	                                             <polyline points="3 6 5 6 21 6"></polyline>
	                                             <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
	                                             <line x1="10" y1="11" x2="10" y2="17"></line>
	                                             <line x1="14" y1="11" x2="14" y2="17"></line>
	                                          </svg>
	                                       </span>
	                                       <span class="text-muted">Xóa</span>
	                                    </div>
	                                 </div>
	                              </div>
	                           </div>
	                        </div>
	                        <!-- input group -->
	                        <div class="col-4 col-md-3 col-lg-3">
	                           <!-- input -->
	                           <!-- input -->
	                           <div class="input-group input-spinner">
	                              <input type="button" value="-" class="button-minus btn btn-sm" data-field="quantity" onclick="minusQuantity(${id})">
	                              <input type="number" step="1" max="10" value="${quantity}" id="cart-quantity-${id}" name="quantity" class="quantity-field form-control-sm form-input" />
	                              <input type="button" value="+" class="button-plus btn btn-sm" data-field="quantity" onclick="addQuantity(${id})">
	                           </div>
	                        </div>
	                        <!-- price -->
	                        <div class="col-2 text-lg-end text-start text-md-end col-md-2">
	                           <span class="fw-bold">${price} VNĐ</span>
	                        </div>
	                     </div>
	                  </li>`;
}
function deleteCart(id)
{
	document.getElementById("item-cart-" + id).remove();
	Cart = Cart.filter(item => item.id !== id);
	localStorage.setItem("Cart", JSON.stringify(Cart));
}
function addQuantity(id)
{
	let existingProduct = Cart.find(item => item.id === id);  
	    if (existingProduct)
		{
	        existingProduct.quantity++;
			document.getElementById("cart-quantity-" + id).value = existingProduct.quantity;
			localStorage.setItem("Cart", JSON.stringify(Cart));
		}
}
function minusQuantity(id)
{
	let existingProduct = Cart.find(item => item.id === id);  
		    if (existingProduct)
			{
		        existingProduct.quantity--;
				document.getElementById("cart-quantity-" + id).value = existingProduct.quantity;
				localStorage.setItem("Cart", JSON.stringify(Cart));
			}
}
function deleteAllCart()
{
	localStorage.removeItem("Cart");
	document.getElementById("cart-list").innerHTML = "";
}
let totalOrder=0;
let totalQuantity=0;
async function showUserSettingCart()
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
				   if (data.success) 
					{
						totalOrder=0;
						totalQuantity=0;
						Cart.forEach(product => {
								totalQuantity+=product.quantity;
								addCart3(product.id,product.quantity);			
						});
					}
					else
					{
						window.location.href = "./signin.html";
					}
				})
				.catch(error => {
					alert("Đã xảy ra lỗi nhận người dùng cart:"+ error);
			});
		}
	
}
async function addCart3(id,quantity=1)
{
	if (!document.getElementById("item-cart-"+id))
	{	
		try 
		{
			const response = await fetch('/ConvenienceStore/DetailServlet?action=list');
		        
			if (!response.ok) 
			{
		   		throw new Error("Network response was not ok " + response.statusText);
			}
			const data = await response.json();			
			if (Array.isArray(data) && data.length > 0) 
			{
				for (var i = 0; i < data.length; i++)
				{
					if (data[i].id === id)
					{
						document.getElementById("table-cart").innerHTML 
						+= createUSCartDiv(data[i].id,data[i].name,data[i].image,data[i].price,quantity,data[i].tag,data[i].type);
						totalOrder+=data[i].price;
						document.getElementById("total-quantity").innerHTML = totalQuantity;
						document.getElementById("total-price").innerHTML = totalOrder + " VNĐ";
						document.getElementById("table-cart").appendChild(document.getElementById("total-value"));			
						break;
					}
				}	
			}		
		} 
		catch (error) 
		{
		     alert('Đã xảy ra lỗi giỏ hàng 3: ' + error);
		}		 
	}	
}
function createUSCartDiv(id,name,img,price,quantity,tag,type)
{
	return `
	<tr id="item-cart-${id}">
	   <td class="align-middle border-top-0 w-0">
	       <a href="#"><img src="${img}" alt="Ecommerce" class="icon-shape icon-xl" /></a>
	       </td>
	        <td class="align-middle border-top-0">
	                                       <a href="#" class="fw-semibold text-inherit">
	                                          <h6 class="mb-0">${name}</h6>
	                                       </a>
	                                       <span><small class="text-muted">${Tag(tag)}</small></span>
	                                    </td>
	                                    <td class="align-middle border-top-0">
	                                       <a href="#" class="text-inherit">${id}</a>
	                                    </td>
	                                    <td class="align-middle border-top-0">${quantity}</td>
	                                    <td class="align-middle border-top-0">${Type(type)}</td>
	                                    <!--              <td class="align-middle border-top-0">
	                                       <span class="badge bg-warning">Còn hàng</span>
	                                    </td>  -->
	                                    <td class="align-middle border-top-0">${price} VNĐ</td>
	                                    
	                                 </tr>`;
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