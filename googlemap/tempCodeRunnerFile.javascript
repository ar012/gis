
// Convert the object into JSON
// ============================
// var myObj = {name: "John", age: 31, city: "New York"};
// var myJSON = JSON.stringify(myObj);

// // window.location = "demo_json=" + myJSON;

// console.log(myObj);
// console.log(myJSON);


// Convert the JSON into object
// ============================

var myJSON = '{"name":"John", "age":31, "city":"New York"}';
var myObj = JSON.parse(myJSON);

console.log(myJSON);
console.log(myObj);

