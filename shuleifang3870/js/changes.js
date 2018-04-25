function getStylesheet() {
      var currentTime = new Date().getHours();
  console.log(currentTime);

  // hour is between 0 and 5 - midnight to 4am
      if (0 <= currentTime && currentTime < 5) {
       document.write("<link rel='stylesheet' href='css/night.css'>");
       document.getElementById("time").innerHTML = "You are reading this in the wee hours.";
      }
  // hour is between 5 and 10 am inclusive
      if (5 <= currentTime && currentTime < 11) {
       document.write("<link rel='stylesheet' href='css/morning.css'>");
       document.getElementById("time").innerHTML = "Good Morning!";
      }
  // hour is between 11 and 15 inclusive - 11am to 3pm
      if (11 <= currentTime && currentTime < 16) {
       document.write("<link rel='stylesheet' href='css/day.css'>");
       document.getElementById("time").innerHTML = "Good Afternoon!";

      }
  // hour is between 16 and 21 - 4 to 9pm inclusive
      if (16 <= currentTime&&currentTime < 22) {
       document.write("<link rel='stylesheet' href='css/evening.css'>");
        document.getElementById("time").innerHTML = "Good Evening!";
      }
  // hour is between 22 and 24 inclusive - 10pm to 12am
      if (22 <= currentTime&&currentTime <= 24) {
       document.write("<link rel='stylesheet' href='css/night.css'>");
        document.getElementById("time").innerHTML = "Good Night! Get some good rest.";
      }

}

getStylesheet();


function dayStyles() {

 var day = new Date().getDay(); // gets day of week number 0-6
 var saying = ', a good day.';


  // assigns day string to variable day
switch (day) {
    case 0:
        day = "Sunday";
        saying = ", chillaxn' time."
        break;
    case 1:
        day = "Monday";
    saying = ", getting started.";
        break;
    case 2:
        day = "Tuesday";
        saying = ", my favorite day starting with a T.";
        break;
    case 3:
        day = "Wednesday";
        saying = ", camel day.";
        break;
    case 4:
        day = "Thursday";
       saying = ", Friday is tomorrow.";
        break;
    case 5:
        day = "Friday";
        saying = " YAY!!!";
        break;
    case 6:
        day = "Saturday";
        saying = ", let's take a hike.";
        break;
}
  console.log(day);

  var msg = "Today is " + day + saying;


  var el = document.getElementById("demo");
  el.innerHTML = msg;


}
dayStyles();

// check out http://www.w3schools.com/js/js_dates.asp

  var d = new Date();

  var day = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

console.log("day number: " + d.getDay());

console.log(day[d.getDay()]);

console.log("month number: " + d.getMonth());

var month = []; // modern way of writing: var month =new Array();
month[0] = "January";
month[1] = "February";
month[2] = "March";
month[3] = "April";
month[4] = "May";
month[5] = "June";
month[6] = "July";
month[7] = "August";
month[8] = "September";
month[9] = "October";
month[10] = "November";
month[11] = "December";


console.log(month[d.getMonth()]);

console.log("hour: " + d.getHours());

console.log("date: " + d.getDate());

console.log(d.getFullYear());

console.log(d.getMonth());

console.log(d.toLocaleDateString());

//change default 24 hour time to 12 hour time
var hour = (d.getHours());

console.log(hour);

var amPm = " ";

if (hour >= 11){
  amPm = " pm";
}else {
  amPm = " am";
}
console.log(amPm);

  if (hour === 0){
       hour = 12;
    }else if (hour >= 13){
       hour = hour - 12;
    }else if (hour >= 1 && hour <= 9 ) {
        hour = "0" + hour;
}
console.log(hour);


var n = day[d.getDay()];
var m = month[d.getMonth()];
var min = d.getMinutes();
var dateNum = d.getDate();
console.log(dateNum);

if ( min >= 0 && min <= 9){
  min = "0" + min;
} else {
  min = min;
}
console.log (min);
//http://www.w3schools.com/jsref/met_document_getelementbyid.asp

document.getElementById("today").innerHTML =
  n + ", " + dateNum +" " + m + " " + d.getFullYear() + " " + hour + ":" + min + amPm;

//document.getElementById("time").innerHTML = hour + ":" + min + amPm;
