let stores = []; //JSON danh sách sản phẩm
async function getStoreData()
{	
	if (stores.length === 0)
	{
		try 
		{
			let response = await fetch('/ConvenienceStore/StoreLocationServlet?action=stores');
			if (!response.ok) 
			{
				alert("Phản hồi thất bại: " + response.statusText);
			}
			response = await fetch('/ConvenienceStore/StoreLocationServlet?action=list');
			if (!response.ok) 
			{
			     alert("Phản hồi thất bại: " + response.statusText);
			}
			else
			{
				stores = await response.json();
				if (!Array.isArray(stores) || stores.length === 0)
				{
					alert('Đã xảy ra lỗi không nhận được dữ liệu, vui lòng làm mới trang');
				}
			}
		}
		catch (error) 
		{
		     alert('Đã xảy ra lỗi nhận dữ liệu store: ' + error);
		}
	}	
}
async function loadAllStore() //Hiển thị danh sách cửa hàng
{
	await getStoreData();
	if (!Array.isArray(stores) || stores.length === 0)
		return;
	for (var i = 0; i < stores.length; i++)
	{
		if (stores[i].close === 1)
		{
			document.getElementById("storeContainer").innerHTML 
			+= createDivStoreForHome(stores[i].id,stores[i].name,stores[i].address,'disabled');
		}
		else
		{
			document.getElementById("storeContainer").innerHTML 
			+= createDivStoreForHome(stores[i].id,stores[i].name,stores[i].address,'');
		}			
	}	
	checkStoreSelected();
}
function createDivStoreForHome(id,name,address,disabled)
{
	return `
	<div class="list-group-item d-flex flex-column align-items-start px-2 list-group-item-action" onclick="changeStore(${id},'${name}')" ${disabled}>
		<span>${name}</span><small>Địa chỉ: ${address}</small>
	</div>
	`
}

function changeStore(id, name) //Xử lí khi thay đổi cửa hàng
{
	const date = new Date();
	date.setTime(date.getTime() + (1*24*60*60*1000)); // Tính ngày hết hạn
	const expires = "expires=" + date.toUTCString(); // Chuyển đổi thành định dạng UTC
	document.cookie = "StoreID=" + id + ";" + expires + "; path=/"; // Tạo cookie
	location.reload();	
}

function checkStoreSelected() // Lấy thông tin cửa hàng đã chọn trong cookie
{
    let id = "StoreID=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for (let i = 0; i < ca.length; i++) 
    {
        let c = ca[i].trim();
        
        if (c.indexOf(id) === 0) 
        {
            let storeID = parseInt(c.substring(id.length));
            
            for (let j = 0; j < stores.length; j++)
            {
                if (stores[j].id === storeID)
                {
                    document.getElementById('btnStore').innerHTML = stores[j].name;
                    return; // Thoát hàm sau khi tìm thấy
                }
            }        
        }
    }
	for (let j = 0; j < stores.length; j++)
	{
	    if (stores[j].id === 1)
	    {
	        document.getElementById('btnStore').innerHTML = stores[j].name;
	        break;
	    }
	} 
}