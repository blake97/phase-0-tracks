// pseudo-code //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



// Release 0:
//Function that takes an array of words or phrases and returns the longest word or phrase in the array.

// 1) create an array full of items to be measured (strings)
// 2) we could start at the first item, and then continue comparing subsequent items to that first item




// Release 1: 
// Find a key-value match bn two objects by writing a function that takes two objects and checks to see if the objects share at least one key-value pair.

// 1) start with two objects. 
// 2) in one, move through each key to see if the second object also includes that key. If it does not, move to next key.
// 3) if the second object does have the key,  check the value to see if it matches.
// 4) thinking I'll use a two-tiered nested if/then, inside of a loop
// 5) match yields true, no matching key-value yields false.



// Release 2:
// Generate Random Test Data

// 1) takes an integer for length
//   - function that takes an argument of an integer
// 2) builds and returns an array of strings of the given length
// 3) words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters
//   - variable equal to a random length generator bn 1 and 10
//   - establish an output variable to store answer in
//   - loop with iterator that goes up to the number passed through as argument
//   -  generate random string for each loop
//   - push that string to the output



// Business Code ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// Release 0:
function return_longest(wordArray) {

    var longest_item = "";           // I need to cerate the variable I'll be storing the longest string in,   and then calling to be printed out. As for value, I'll use "0", so anything is guaranteed to be higher than it is. We'll continue looping until the highest 

    for (i = 0; i < wordArray.length; i++) {
        if (wordArray[i].length >= longest_item.length) {
            longest_item = wordArray[i];   
        }
    }
    return longest_item;
}




// Release 1:
var object1 = {
    isFriend: true,
    name: "James",
    age: 53,
    height: "5 feet, 11 inches"
}
var object2 = {
    name: "Joe",
    age: 24,
    height: "5 feet, 11 inches"
}

function isThereMatch(object1, object2) {
    var similar = false;
    for (var key in object1) {
        if (object1[key] === object2[key]) {
            similar = true;
        }
    }
    return similar;
}

// Release 2:
// attempt 1 (failed)#####################################################################################################################
// function stringArrayGen(numberStrings) {
//     var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
//     var newStringLength = 0
//     var newString = ""
//     var outputArray = []
//     var nextLetter = ""

//     //random number generator bn (min and max):
//     function randRound(min, max) {
//         return Math.round(Math.random(min, max) * (max - min) + min);
//     }

//     // loop to create number of strings, with random lengths and random letters
//     for (i = 0; i < numberStrings; i++) {

//         newStringLength = randRound(1, 10); //<<== reset the new random stringlength for the next string to be created
//         if (newString.length < newStringLength) {
//             nextLetter = alphabet[randRound(1, alphabet.length)];
//             newString = newString + nextLetter
//         }
//         outputArray.push(newString);
//     }
//     return outputArray
// }

// stringArrayGen(7);


// attempt 2 (also failed)####################################################################################################################
// // I've now tried it two ways... neither worked fully, both partially worked. In the first case, my additions are not starting anew in the array with a comma, which is why it looks like a list of words that are continually growing. Here's attempt 2, but i can only get one returned value.

// function rand(min, max) {
//     min = Math.ceil(min);
//     max = Math.floor(max);
//     return Math.floor(Math.random() * (max - min + 1)) + min;
// }

// var alphabet = "abcdefghijklmnopqrstuvwxyz";
// var desiredArrayLength = 7

// var newWord = ''
// var outputArray = []


// function arrayBuilder(desiredArrayLength) {

//     for (var arrayLength = 0; arrayLength < desiredArrayLength; arrayLength++) {

//         for (i = 0; i < rand(1, 10); i++) {

//             newWord += alphabet.charAt([rand(1, 26)]);
//         }
//     }
//     outputArray.push(newWord)
//     return outputArray
// }

// console.log(arrayBuilder(1))

// Attempt 3: WORKED!!! #########################################################################################################################
// Given how the last one seemed to be getting close, I decided to pare down the code and split it into two separate functions... this allowed me to streamline the previous code into a word generation function and an array function that would insert the value passed in by the array function x number of times... I'm learning to keep it as simple as possible with JS. Still, I'm really, really aggravated I couldn't fit it all in one function. THIS was a very, VERY emotional release lol.

// randomizer
function rand(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

// build a word
function buildWord() {
var alphabet = "abcdefghijklmnopqrstuvwxyz";
var wordLength = rand(1,10);
var newWord = '';
        for (i = 0; i < wordLength; i++) {
            newWord+= alphabet[rand(0, 25)];
        }
    return newWord;
}

// build the array via passing in words
function buildArray(desiredArrayLength){
  wordArray = []
  for (var i= 0; i < desiredArrayLength;i++)
  wordArray.push(buildWord())
  return wordArray
}



// Driver Code ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Release 0:

// testing first string array
var wordArray = ["hello", "I said HELLO!", "THIS IS SUCH A LONG PHRASE"]
return_longest(wordArray);

// testing second string array
var wordArray = ["ppppppppppppppppp", "ppppp", "p"]
return_longest(wordArray);




// Release 1:
//test first pair of objects 
console.log(isThereMatch(object1, object2))

//build second pair of objects 
var fish1 = {
  Order:  "Tetraodontiformes",
  Family: "Tetraodontidae",
  Genus:  "Tetraodon",
  commonName: "globefish",
  haveISeen: true,
  haveIOwned: true
}

var fish2 = {
Kingdom:  "Animalia",
Phylum: "Chordata",
Class:  "Chondrichthyes",
Subclass: "Elasmobranchii",
Infraclass: "Euselachii",
Superorder: "Selachimorpha",
haveIOwned: false,
haveISeen: true
}
// test second pair of objects for similarities
console.log(isThereMatch(fish1, fish2))




// Release 2:
// testing out the code
console.log(buildArray(10))

console.log('------- testing 10 times Longest -------')
// building function to build an array, return it, pass it through returnLongest, and then return the longst word. Repeat this 10 times.

    for (var i = 0; i < 10; i++) {
      console.log('Test '+ (i+1))
      var array = buildArray(10);
      console.log(array);
      console.log('-----Longest Word-----');
      return return_longest(array);

}




