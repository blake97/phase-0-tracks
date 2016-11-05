// Release 0 function that takes an array of words or phrases and returns the longest word or phrase in the array.
// pseudocode
// 1) create an array full of items to be measured (strings)
// 2) we could start at the first item, and then continue comparing subsequent items to that first item

var wordArray = ["hello", "I said HELLO!", "THIS IS SUCH A LONG PHRASE"]

function return_longest(wordArray) {

    var longest_item = "";           // I need to cerate the variable I'll be storing the longest string in,   and then calling to be printed out. As for value, I'll use "0", so anything is guaranteed to be higher than it is. We'll continue looping until the highest 

    for (i = 0; i < wordArray.length; i++) {
        if (wordArray[i].length >= longest_item.length) {
            longest_item = wordArray[i];   
        }
    }
    return longest_item;
}

return_longest(wordArray);

var wordArray = ["ppppppppppppppppp", "ppppp", "p"]


///////// ####### Release 1: Find a Key-Value Match ############################
// write a function that takes two objects and checks to see if the objects share at least one key-value pair.

//  