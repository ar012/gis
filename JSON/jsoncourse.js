var fs = require('fs');

var faker = require('faker');

var people = [];

for (var i=0; i<10; i++) {
    var person = {};

    person.name = faker.name.findName();
    person.email = faker.internet.email();
    person.address = {
        city: faker.address.city(),
        country: faker.address.country(),
        lat: faker.address.latitude(),
        long: faker.address.longitude()
    };
    people.push(person);
}

fs.writeFile('demo.json', JSON.stringify(people), function(err, data) {
    console.log('File created successfully...');
    
});


// var data = fs.readFileSync('demo.json').toString();

// var people = JSON.parse(data)
// console.log(people);

// people.forEach(function(elem) {
//     console.log(elem.name);
    
// });