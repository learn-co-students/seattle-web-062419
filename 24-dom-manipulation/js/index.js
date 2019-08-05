let name = "Susan";

function sayHello(name) {
  return "Hello " + name;
}

const arr = ["a", "b", "c"];

// for (let i = 0; i < arr.length; i++) {
//   console.log(sayHello(arr[i]));
// }

// arr.forEach(function(element) {
//     console.log(sayHello((element + " from forEach")));
// })

document.addEventListener("DOMContentLoaded", function() {
  const list = document.querySelector("ul");
  let newItem = document.createElement("li");

  const topping = "Cherry"
  newItem.textContent = `${topping} Pizza`;
  newItem.id = "pizza";
  newItem.style = "color:red;";
  list.prepend(newItem);

  const welcomeArea = document.querySelector(".welcome");
  let newImage = document.createElement("img");
  newImage.src =
    "https://www.thelabradorsite.com/wp-content/uploads/2019/03/Cute-puppy-Names-Over-200-Adorable-Ideas-LS-long.jpg";
  newImage.style = "height: 250px;";
  welcomeArea.appendChild(newImage);

  console.log(newItem);

  console.log(document.querySelector("h2"));

  console.log(document.getElementById("salmon"));

  const foodList = document.querySelectorAll("li");

  foodList.forEach(function(food) {
    const thisFood = food.textContent
    food.textContent = thisFood + " Cake"
    console.log(food.textContent)
  })
});
