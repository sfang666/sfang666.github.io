var d = new Date(); //"=" assign opreator

  var day = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

var openClosed = ["Open", "Closed"];


var hour = (d.getHours());

//change default 24 hour time to 12 hour time
//   if (hour === 0){
//        hour = 12;
//     }else if (hour >= 13){
//        hour = hour - 12;
//     }else if (hour >= 1 && hour <= 9 ) {
//         hour = "0" + hour;
// }
// console.log(hour);


var n = day[d.getDay()];
var min = d.getMinutes();
var s = 1;

// judge the status

if(n === "Sunday"){
  s = 1;
  }
      else if(hour >= 12 && hour <= 15){
         s = 0;
        }
      else if(hour >= 17 && hour <= 20){
          s = 0;
        }
      else if(hour = 11 && min > 29 && min < 60 ){
        s = 0;
        }
      else if(hour = 16 && min > 29 && min < 60){
        s = 0;
        }
      else if(hour = 20 && min> 29 && min < 60){
        s = 0;
        }


document.getElementById("today").innerHTML = "We" + " "+ "are" + " "+ "now" +":" + " " + openClosed[s];
//document.getElementById("time2").innerHTML = hour + ":" + min +" "+ amPm;
