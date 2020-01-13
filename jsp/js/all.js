    window.onload = function() {
    	 // 获取输入框
      var Textinput = document.getElementById("Textinput");
 	  var inputPassword3 = document.getElementById("inputPassword3");
 	  var optionsRadios1 = document.getElementById("optionsRadios1");
 	  var optionsRadios2 = document.getElementById("optionsRadios2");
 	  var inputx = document.getElementById("inputx");
 	  
 	 // 获取提交按钮
      var btn_submit = document.getElementById("btn_submit");

   // 获取信息span
      var msg1 = document.getElementById("msg1");
      var msg2 = document.getElementById("msg2");
      var msg3 = document.getElementById("msg3");
      var msg4 = document.getElementById("msg4");

   

      btn_submit.onclick = check;
      Textinput.onkeyup = check;
      inputPassword3.onkeyup = check;
      optionsRadios1.onkeyup = check;
      optionsRadios2.onkeyup = check;
      inputx.onkeyup = check;

   // JS代码到此为止   
    };
 // 输入框验证
    function check() {
   	 // 获取输入框
        var Textinput = document.getElementById("Textinput");
   	  var inputPassword3 = document.getElementById("inputPassword3");
   	  var optionsRadios1 = document.getElementById("optionsRadios1");
   	  var optionsRadios2 = document.getElementById("optionsRadios2");
   	  var inputx = document.getElementById("inputx");
   	  
   	 // 获取提交按钮
        var btn_submit = document.getElementById("btn_submit");

     // 获取信息span
        var msg1 = document.getElementById("msg1");
        var msg2 = document.getElementById("msg2");
        var msg3 = document.getElementById("msg3");
        var msg4 = document.getElementById("msg4");

  	  // 获取文本内容
      var Textinput = Textinput.value;
		var inputPassword3 = inputPassword3.value;
		var optionsRadios1 = optionsRadios1.value;
		var optionsRadios2 = optionsRadios2.value;
		var inputx = inputx.value;
		// 必填项验证
      if ("" == Textinput) {
        msg1.innerHTML = "该输入项不能为空";
        return false;
      }
      if ("" == inputPassword3) {
        msg2.innerHTML = "该输入项不能为空";
        return false;
      }
      if ("" == optionsRadios1 || "" == optionsRadios2) {
        msg3.innerHTML = "该输入项不能为空";
        return false;
      }
      if ("" == inputx) {
        msg4.innerHTML = "该输入项不能为空";
        return false;
      }

    
      // 错误信息清空  
      msg1.innerHTML = "";
      msg2.innerHTML = "";
      msg3.innerHTML = "";
      msg4.innerHTML = "";
      return true;

    };


function getCurDate()
{  
 var d = new Date();  
 
 var years = d.getFullYear();  
 var month = add_zero(d.getMonth()+1);  
 var days = add_zero(d.getDate());  
 var hours = add_zero(d.getHours());  
 var minutes = add_zero(d.getMinutes());  
 var seconds=add_zero(d.getSeconds());  
 var ndate = years+"年"+month+"月"+days+"日 "+hours+":"+minutes+":"+seconds;  
 divT.innerHTML= ndate;  
}  
  
function add_zero(temp)  
{  
 if(temp<10) return "0"+temp;  
 else return temp;  
}  
  
setInterval("getCurDate()",100);  




