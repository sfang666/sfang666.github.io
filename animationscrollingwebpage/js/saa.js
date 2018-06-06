var submarine=document.getElementById("submarine");
var dong=document.getElementById("dong");
var guangzhou=document.getElementById("guangzhou");
var family=document.getElementById("family");
var airp=document.getElementById("airp");
var arrive=document.getElementById("arrive");
var aa;
var photo=document.getElementById("photo");
window.onscroll=function(){


  var fromTop = window.pageYOffset;

  //var fromLeft = window.pageXOffset;

  //console.log(fromLeft);

  //dong.innerHTML = fromTop + "px";
  //console.log(fromTop);
  submarine.innerHTML = fromTop + "px";

  submarine.style.top = fromTop * 1.02 + "px";

  dong.style.top = fromTop * 1.02 + "px";
  guangzhou.style.left = fromTop * 1.02 +"px" ;
  //family.style.top = fromTop * 1.02 + "px";

  /*submarine.style.border = fromTop/100 + "px solid blue";*/

  //submarine.style.transform="rotate("+ fromTop +"deg)";

  if(fromTop>250){

     dong.style.display = "none"; //飞机消失
	 guangzhou.style.display = "block";//广州出现

  }else{
	  dong.style.display = "block"; //飞机出现
      guangzhou.style.display = "none";//广州消失
  }

  if(fromTop>750){

    family.style.top = fromTop*1.6 + "px";
  }
  if(fromTop>1000){

    family.style.display = "none";
  }else{
	  family.style.display = "block";
	  }

  if(fromTop>1500){

    airp.style.right = fromTop + "px";
  }
  /*if(fromTop>2100){
	arrive.style.top = fromTop + "px";
}

  if(fromTop>3100){
	arrive.style.display = "none";
}*/
  if(fromTop>2100 && fromTop<=3100){
    arrive.style.top=fromTop+"px";
  }/*arrive*/

  /*photome*/
  if(fromTop>2700 && fromTop<=3600){
  photo.style.top=fromTop*1.05+"px";
  // var a = (3600-fromTop);
  photo.style.height=514-(fromTop-2700)+"px";
  }

  if(fromTop > 4000){
	   $('#study').animate({top:"4500px",left:"200px"},1500);
  }
  if($('#study').position().left == 200){

	   $('#cooking').animate({top:"4800px",left:"600px"},1500);
  }
  if($('#cooking').position().left == 600){

	   $('#school').animate({top:"5200px",left:"950px"},1500);
  }
  if($('#school').position().left == 950){

	   $('#play').show();
  }
   if( $("#play").is(":visible") ){

	  $('#car2').show().animate({top:"9800px"},3000);
   }

   if( $("#car2").position().top == 9800 ){

	  $('#airp2').show().animate({top:"8800px"},2000);
	  $("#car2").hide();
   }


};
