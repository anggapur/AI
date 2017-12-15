var loc = window.location.pathname;
var dir = loc.substring(0, loc.lastIndexOf('/'));
var dir2 = dir.substring(0, dir.lastIndexOf('/'));//tanpa admin

var HOST = "http://"+$(location).attr('host')+dir+"/";
var ADMIN = "http://"+$(location).attr('host')+"/AI/admin/";
var IMAGES = "http://"+$(location).attr('host')+dir2+"/public/uploads/";
var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
var BEARER = "Bearer 1234567890";
var DATAS = "";
var STATE = 0;


// alert(HOST);
function loadContentGet(url,func)
{
	
	$.ajax({
        url: url,
         headers: {
	        'Authorization':BEARER,	        
	        'Content-Type':'application/json'
	    },
        type: 'GET',        
        async: false,
        success: function (data) {	            
            // console.log(data);            
            func(data);
        },
        cache: false,
        contentType: false,
        processData: false
    });	
}

function loadContentPost(url,func,formData)
{
	$.ajax({
        url: url,
        type: 'POST',
        data: formData,
        async: false,
        success: function (data) {	            
           // console.log(data);
           func(data);
        },
        cache: false,
        contentType: false,
        processData: false
    });
}

function cekJawaban(){
	kalimat = $('#textarea-from').val();
	formData = new FormData();    
	formData.append('kalimat',kalimat);
	loadContentPost(HOST+"pengolah",setResponseData,formData);	
}

var setResponseData = function(data){
	// alert(data);
    alert(data.jawabanAkhir);
	console.log(data);
};

