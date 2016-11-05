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
// 






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
var object1 = {name: "James", age: 53, height: "5 feet, 11 inches"}
var object2 = {name: "Joe", age: 24, height: "5 feet, 11 inches"}




// Release 2: 


// Driver Code ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Release 0:

// testing first string array
var wordArray = ["hello", "I said HELLO!", "THIS IS SUCH A LONG PHRASE"]
return_longest(wordArray);

// testing second string array
var wordArray = ["ppppppppppppppppp", "ppppp", "p"]
return_longest(wordArray);



// Release 1: 










