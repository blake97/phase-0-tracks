function changeBackgroundColor(event) {
event.target.style.backgroundColor = "red";
}

var background = document.getElementsByTagName("body");
background = background[0];
background.addEventListener("click", changeBackgroundColor);


// // -------
// function showAfter(event) {
//   if (false == $(after).is('hidden')) {
//     $(after).show(250)}
//   else {
//       $(after).hide 250;
//     }
//   }


// // or this way? 

function showAfter(){
var aftermath = document.getElementById("div#after");
aftermath.style.visibility = "visible";
}

var clickpic = document.getElementById("div#before");
clickpic.addEventListener("click", showAfter);


// // I can't get this to work at all. It's driving me mad. 've been here hours, but it's rabithole after rabithole.










