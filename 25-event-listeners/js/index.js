document.addEventListener("DOMContentLoaded", function() {
  const list = document.querySelector("ul");
  let newItem = document.createElement("li");

  const topping = "Cherry";
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

  // document.addEventListener("click", function() {
  //   console.log("you clicked the docuemnt");
  // });
  document.addEventListener("keypress", function(e) {
    console.log(e.key)
    console.log("you pressed a key");
  });

  const foodList = document.querySelectorAll("li");

  foodList.forEach(function(food) {
    const thisFood = food.textContent;
    food.textContent = thisFood + " Cake";
  });

  const form = document.getElementById("formSubmit");

  form.addEventListener("submit", function(e) {
    e.preventDefault()
    console.log(e)
    const userInput = event.target.food.value;
    const newFood = document.createElement("li");
    newFood.textContent = userInput;
    list.appendChild(newFood)
    document.querySelector("#formSubmit input").value = "";
  });

});
