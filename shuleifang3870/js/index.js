
function upDate(tempDiv){
	tempDiv.style.fontSize = "240%";
}

function unDo(tempDiv){
	tempDiv.style.fontSize = "180%";
}

function onTouchHeadLine(hl){
	hl.style.textShadow = "-1px 0 black, 0 1px black, 1px 0 black, 0 -1px black";
}

function onLeaveHeadLine(hl){
	hl.style.textShadow = "";
}

function sleep(numberMillis) {
	var now = new Date();
	var exitTime = now.getTime() + numberMillis;
	while (true) {
		now = new Date();
		if (now.getTime() > exitTime)
		return;
	}
}

function onTouchPicture(pic){
	pic.style.borderRadius = "35%";
	sleep(700)
	pic.style.borderRadius = "20%";
	sleep(1000)
	pic.style.borderRadius = "10%";
}

function onLeavePicture(pic){

	console.log("abc");
	pic.style.borderRadius = "50%";
}
