// # <<<<<< ~~~~~~~~~~________Pseudocode________~~~~~~~~~~  >>>>>> #
// step 1: take some input as a tring.
// step 2: create a new empty container string for the reversed output. 
// step 3: copy the last character of input string and add 
//         to the empty output string
// Step 4: move backward down the input string by adding -1
// step 5: complete steps 1 - 4 until the string has been covered.
// step 6: return the final value


function reverse_string(input) {
  var output_string="";
  for(var i=input.length -1; i >= 0;i--){
    output_string+=input[i];
  }
    return output_string;
}





// #### driver code ####
reverse_string('hello');


var num=1;
if (num == 1){
  console.log (reverse_string('hello'));
}




