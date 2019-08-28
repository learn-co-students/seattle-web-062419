// //OO review

// Encapsulation -> Sealing behaviors within classes and methods
// Abstraction -> The use of encapsulated classes and methods
// Inheritance -> the use of base classes in the definition of extended classes
// Polymorphism -> The use of inherited classes and their behaviors when dealing with objects


class Hypnotist {
  constructor(name) {
    this.name = `The Great ${name}`;
  }

  setName = newName => {
    this.name = newName;
  };

  hypnotize = () => {
    setTimeout(() => {
      console.log(
        `%c${this.name} says "SHAZAAM!!"`,
        "color:red;background-color:yellow;font-size:22px;"
      );
    }, 4000);
    let countdown = 3;
    while (countdown > 0) {
      let time = countdown;
      setTimeout(() => {
        console.log(
          `%c${time}`,
          "color:red;background-color:yellow;font-size:22px;"
        );
      }, countdown * 1000);
      countdown--;
    }
    return "You are about to be hypnotized...";
  };
}

let boppy = new Hypnotist("Boppy");
let reginald = new Hypnotist("Reginald");

//Functional JS
//Everything is a function!

let jane = { name: "Jane" };
let bill = { name: "Bill" };
let test = { test: "tyest" };

hypnotize = person => {
  console.log(`You've been hypnotized by ${person.name}`);
  return person;
};

getName = hypnotist => {
  return hypnotist.name;
};

capitalizeName = person => {
  let newObject = person;
  newObject.name = newObject.name.toUpperCase();
  return newObject;
};

hypnotize(capitalizeName(bill));

let johnsCar = { wheels: 4, color: "red", seats: 5 };

paintCarWhite = car => {
  let newCar = car;
  newCar.color = "white";
  return newCar;
};

paintCarBlue = car => {
  let newCar = car;
  newCar.color = "blue";
  return newCar;
};

removeSeat = car => {
  let newCar = car;
  newCar.seats = newCar.seats - 1;
  return newCar;
};

sayGoodbye = () => {
  return "goodbye";
};

speak = content => {
  console.log("In the speak function");
  console.log(content());
};

function talkAboutMe() {
  console.log(this.name);
}

// talkAboutMe()

// talkAboutBill = talkAboutMe.bind(bill)
// talkAboutBill()

// talkAboutJane = talkAboutMe.bind(jane);
// talkAboutJane()

let seansCar = { wheels: 4, color: "red", seats: 5 };

// let { color } = seansCar;
// color = "orange";
// // console.log(wheels)
// console.log(seansCar)

const wheels = 4;
const color = "blue";
const seats = 5;

const StephaniesCar = { wheels, color, seats };
// console.log(StephaniesCar)

let myArray = ["hello", "goodbye", "testing"];

// myArray.push("school");

// let newArray = [...myArray, "school"];
// console.log(newArray);

// const stephaniesNewCar = Object.assign({}, StephaniesCar, {
//   seats: 2
// });
// console.log(stephaniesNewCar);

sayHello = () => {
  console.log("Hello");
};

(function() {
  console.log("info");
})();
