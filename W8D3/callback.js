

function titleize(arr,printCallback){
      
//   arr.forEach(ele => printCallback(ele))
 arr.forEach(ele => {printCallback(ele)})


}

function printCallback(name){
 return console.log(`Mx.${name} Jingleheimer Schmidt`)
}


let arr1 = ["Mary", "Brian", "Leo"]


console.log(titleize(arr1,printCallback))



// > titleize(["Mary", "Brian", "Leo"], printCallback);
// Mx. Mary Jingleheimer Schmidt
// Mx. Brian Jingleheimer Schmidt
// Mx. Leo Jingleheimer Schmidt
// undefined