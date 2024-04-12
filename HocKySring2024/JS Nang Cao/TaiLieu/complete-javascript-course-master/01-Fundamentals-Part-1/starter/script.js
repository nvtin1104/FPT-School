const massMark = 78;
const heightMark = 1.69;
const massJohn = 92;
const heightJohn = 1.95;

const BMIMark = massMark / (heightMark * heightMark);
const BMIJohn = massJohn / (heightJohn * heightJohn);
console.log(BMIMark, BMIJohn);
if (BMIJohn > BMIMark) {
    console.log(`John's BMI is higher than Mark's!`);
    console.log(`John's BMI (${BMIJohn}) is higher than Mark's (${BMIMark})!`)
}
else {
    console.log(`Mark's BMI is higher than John's!`);
    console.log(`Mark's BMI (${BMIMark}) is higher than John's (${BMIJohn})!`)

}
// console.log()
let scoreDolphins = 96 + 108 + 89 / 3;
let scoreKoalas = 88 + 91 + 110 / 3;
console.log(scoreDolphins)
if (scoreDolphins > scoreKoalas) {
    console.log(`Dolphins win the trophy`);
}
else if (scoreDolphins < scoreKoalas) {
    console.log(`Koalas win the trophy`);
}
else {
    console.log(`Both win the trophy`)
}