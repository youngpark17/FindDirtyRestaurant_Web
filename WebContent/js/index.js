window.addEventListener('load', function(){

	    
	document.getElementById('bt1').onclick = function(){
	    const str = '번호로 정렬<span class="caret"></span>';
	    document.getElementById('dropdownMenu1').innerHTML=str;
	}
	
	document.getElementById('bt2').onclick = function(){
	    const str = '업소명 정렬<span class="caret"></span>';
	    document.getElementById('dropdownMenu1').innerHTML=str;
	}
	
	document.getElementById('bt3').onclick = function(){
	    const str = '날짜별 정렬<span class="caret"></span>';
	    document.getElementById('dropdownMenu1').innerHTML=str;
	}
	
	document.getElementById('bt4').onclick = function(){
	    const str = '오름차순 정렬<span class="caret"></span>';
	    document.getElementById('dropdownMenu2').innerHTML=str;
	}
	document.getElementById('bt5').onclick = function(){
	    const str = '내림차순 정렬<span class="caret"></span>';
	    document.getElementById('dropdownMenu2').innerHTML=str;
	}
	
	function Res(num,name,date,content,address){
	    this.num=num;
	    this.name=name;
	    this.date=date;
	    this.content=content;
	    this.address=address;
	}
	function compareByNumAsc(a, b) {
	    return a.num-b.num;
	}
	
	function compareByNameAsc(a, b) {
	    return a.name.localeCompare(b.name);
	}
	
	function compareByDateAsc(a, b) {
	    return a.date.localeCompare(b.date);
	}
	
	function compareByNumDesc(a, b) {
	    return b.num-a.num;
	}
	 
	function compareByNameDesc(a, b) {
	    return b.name.localeCompare(a.name);
	}
	
	function compareByDateDesc(a, b) {
	    return b.date.localeCompare(a.date);
	}
	
	document.getElementById('sort-btn').onclick = function(){
	    const list = new Array();
	    const table = document.getElementsByTagName('tr');
	    for (let i=1; i< table.length;  i++){
	        list.push(new Res(
	            table[i].cells[0].innerHTML,
	            table[i].cells[1].innerHTML,
	            table[i].cells[2].innerHTML,
	            table[i].cells[3].innerHTML,
	            table[i].cells[4].innerHTML));
	       
	    }
	    const flag1 = document.getElementById('dropdownMenu1').firstChild;
	    const flag2 = document.getElementById('dropdownMenu2').firstChild;
	    console.log(flag1.nodeValue+" "+flag2.nodeValue);
	    if(flag1.nodeValue=='정렬 기준' || flag2.nodeValue=='정렬 방법'){
	        alert('보기 중에 선택 하시고 눌르세요');
	        return;
	    }
	    if(flag1.nodeValue=='번호로 정렬' && flag2.nodeValue=='오름차순 정렬'){
	        list.sort(compareByNumAsc);
	    }
	    if(flag1.nodeValue=='업소명 정렬' && flag2.nodeValue=='오름차순 정렬'){
	        list.sort(compareByNameAsc);
	    }
	    if(flag1.nodeValue=='날짜별 정렬' && flag2.nodeValue=='오름차순 정렬'){
	        list.sort(compareByDateAsc);
	    }
	
	    if(flag1.nodeValue=='번호로 정렬' && flag2.nodeValue=='내림차순 정렬'){
	        list.sort(compareByNumDesc);
	    }
	    if(flag1.nodeValue=='업소명 정렬' && flag2.nodeValue=='내림차순 정렬'){
	        list.sort(compareByNameDesc);
	    }
	    if(flag1.nodeValue=='날짜별 정렬' && flag2.nodeValue=='내림차순 정렬'){
	        list.sort(compareByDateDesc);
	    }
	    
	    var tmpString='';
	    var tbody = document.getElementsByTagName('tbody')[0];
	    for (let i = 0; i < list.length; i++) {
	        tmpString+='<tr>';
	        tmpString+='<td>'+list[i].num+'</td>';
	        tmpString+='<td>'+list[i].name+'</td>';
	        tmpString+='<td>'+list[i].date.substring(0,4)+'년'+list[i].date.substring(4,6)+'월'+list[i].date.substring(6,8)+'일</td>';
	        tmpString+='<td>'+list[i].content+'</td>';
	        tmpString+='<td>'+list[i].address+'</td>';
	        tmpString+='</tr>';
	    }
	    tbody.innerHTML=tmpString;
	
	  
	}
	



})






