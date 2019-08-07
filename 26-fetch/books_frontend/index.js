function addBook(book) {
  const book_list = document.querySelector("#book-list");
  const div = makeBookCard(book);
  book_list.appendChild(div);
}

function makeBookCard(book) {
  const div = document.createElement("div");
  div.className = "card";

  const img = document.createElement("img");
  img.src = book.img;

  const h3 = document.createElement("h3");
  h3.textContent = book.title;

  const p = document.createElement("p");
  p.textContent = book.author;

  //add all elements to div
  div.appendChild(img);
  div.appendChild(h3);
  div.appendChild(p);

  return div;
}

// function showBooks(bookArray) {
//   bookArray.map(function(book) {
//     addBook(book);
//   });
// }

let myObject = {
  place: "seattle",
  time: "morning",
  weather: "gray"
}

// const myKeys = Object.keys(myObject)

// myKeys.map(key => console.log(myObject[key]))

showBooks = x => x.map(y => addBook(y))

// showBooks = bookArray => {
//   bookArray.map(book => {
//     addBook(book)
//   })
// }

// what happens when books isn't defined?
// showBooks(books);

document.addEventListener("DOMContentLoaded", function() {

  // debugger;

  fetch("http://localhost:3000/books") //GET Request
    .then(function(response) {
      // console.log(response);
      return response.json();
    })
    .then(function(jsonBooks) {
      showBooks(jsonBooks);
    });

  // fetch("http://localhost:3000/books/10") //GET Request - Details for id 1
  //   .then(function(response) {
  //     return response.json();
  //   })
  //   .then(function(jsonBook) {
  //     console.log(jsonBook);
  //   });
// //POST
//   fetch("http://localhost:3000/books", {
//     method: "POST",
//     headers: {
//       "Content-Type": "application/json",
//       Accepts: "application/json"
//     },
//     body: JSON.stringify({
//       id: 10,
//       title: "The Hobbit",
//       author: "JRR Tolkein",
//       img:
//         "https://images-na.ssl-images-amazon.com/images/I/51uLvJlKpNL._SX321_BO1,204,203,200_.jpg"
//     })
//   }).then(function(response) {
//     console.log(response);
//   });




});
