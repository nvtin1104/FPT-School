'use strict';

// Data needed for a later exercise
const flights =
  '_Delayed_Departure;fao93766109;txl2133758440;11:25+_Arrival;bru0943384722;fao93766109;11:45+_Delayed_Arrival;hel7439299980;fao93766109;12:05+_Departure;fao93766109;lis2323639855;12:30';

// Data needed for first part of the section
const restaurant = {
  name: 'Classico Italiano',
  location: 'Via Angelo Tavanti 23, Firenze, Italy',
  categories: ['Italian', 'Pizzeria', 'Vegetarian', 'Organic'],
  starterMenu: ['Focaccia', 'Bruschetta', 'Garlic Bread', 'Caprese Salad'],
  mainMenu: ['Pizza', 'Pasta', 'Risotto'],

  openingHours: {
    thu: {
      open: 12,
      close: 22,
    },
    fri: {
      open: 11,
      close: 23,
    },
    sat: {
      open: 0, // Open 24 hours
      close: 24,
    },
  },
  order: function (starterIndex, mainIndex) {
    return [this.starterMenu[starterIndex], this.mainMenu[mainIndex]];
  },
  orderDelivery: function ({ starterIndex, mainIndex, time, address }) {
    console.log(`Oreder: ${time} - ${address}`);
  },
  orderPasta: function (ing1, ing2, ing3) {
    console.log(`Here is decliciuos pasta with ing: ${ing1} and ing: ${ing2} and ing: ${ing2}`);
  },
  orderPizza: function (mainIng, ...otherIng) {
    console.log(mainIng);
    console.log(otherIng);
  }
};
// 
restaurant.orderPizza('nam', 'hanh')
restaurant.orderDelivery({
  time: '22:20',
  address: '12',
  mainIndex: 1,
  starterIndex: 0,
})
const { name, order } = restaurant;
console.log(name);
// toasn tử or và and ngắn
restaurant.orderPasta && restaurant.orderPasta(1, 2, 3)
// tóoánn tử spear

const newMenu = [...restaurant.starterMenu, ...restaurant.mainMenu];
console.log(newMenu)
// const ingredients = [
//   prompt('Let\'s make pasta! Ingredient 1: '),
//   prompt('Let\'s make pasta! Ingredient 2: '),
//   prompt('Let\'s make pasta! Ingredient 3: '),
// ]
// console.log(ingredients)
// restaurant.orderPasta(...ingredients)
//cách để viết tắt việc distructuring oj 

let a = 1;
let b = 2;
const obj = { a: 2, b: 3, c: 4 };
({ a, b } = obj);
console.log(a, b);
// các mảng lồng nhau
const { openingHours } = restaurant;
const {
  fri: {
    open: o,
    close: c
  },
} = openingHours;
// const [main, , secondary] = restaurant.categories;
// console.log(main, secondary)
// const [starter, mainCoure] = restaurant.order(0, 2);
// console.log(starter, mainCoure);
// const nested = [2, 5, [6, 7]];
// // const [i, , [j, k]] = nested;
// // const [i, , j] = nested;

// // default value 
// const [i = 1, j = 1, k = 1, g = 1] = nested;
// console.log(i, j, k, g)
//
const menu = [...restaurant.starterMenu, ...restaurant.mainMenu];

for (const item of menu) console.log(item);

for (const [i, el] of menu.entries()) {
  console.log(`${i + 1}: ${el}`);
}

console.log([...menu.entries()]);
const ojSet = new Set(['Tins', 'Hello']);
console.log(ojSet);
const convertArr = [...ojSet];
console.log(convertArr);
const rest = new Map();
console.log(rest);
rest.set('name', 'Tins');
rest.set('value', 'Hello');
console.log(...convertArr.entries());
const question = new Map([
  ['question', 'What is the best programming language in the world?'],
  [1, 'C'],
  [2, 'Java'],
  [3, 'JavaScript'],
  ['correct', 3],
  [true, 'Correct'],
  [false, 'Try again!'],
]);
console.log(question)