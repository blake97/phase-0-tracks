// declaring two arrays
var colors = ["blue", "green","red","orange"];
var names = ["Ed", "Hubert", "Chesterfield", "Daisy"];

// adding a value to each array - can only use .push for an array. not an object (hash)
colors.push("hot pink");
names.push("Jerald");




// Release 1: Build an Object /////////
// TO CREATE A HASH FROM 2 ARRAYS, I CAN DO ONE OF TWO WAYS //////////
function connect_horses_to_colors(names, colors) {
  var horses_and_colors = {};

  for (var i = colors.length; i >=0; i--){
      horses_and_colors[names[i]] = colors[i];
  }
  return horses_and_colors;
}
// OOORRRR, I CAN DO IT THIS WAY /////////
function connect_horses_to_colors(colors, names) {
var horses_and_colors = {};
  for (var i = 0; i < colors.length; i++) {
      hhorses_and_colors[names[i]] = colors[i];
  }
return horses_and_colors
}
// print the hash from either of the above two /////////
console.log (connect_horses_to_colors(names, colors));




// Release 2: Build Many Objects Using a Constructor ///////////////////
//write a constructor function for a car. Give it a few different properties of various data types, including at least one function. Demonstrate that your function works by creating a few cars with it.

// Business Code
function Car(year, color, make, isFast) {
this.year = year;
this.color = color;
this.make = make;
this.isFast = true;
this.pealOut = function() {console.log("Accelerates so fast tire can't grip pavement!!!!!!!!!!!!!!!!!!!!!!!");};
console.log("Car initialization complete!");
}

// Driver Code
var car1 = new Car(2017, "black & ice blue" ,"Bugatti", true);
console.log(car1.color);
console.log("----");

car2 = new Car(1970, "silver", "Beetle", false);
console.log(car2.isFast)
console.log("----");

car3 = new Car(1930, "tan and brown", "model A", false);
console.log(car3.make);
car2.pealOut();


