// Lab 3 
console.log('-----LAB 3 -----');
console.log('==============YC3.2===============');
const checkDogs = (dogsJulia, dogsKate) => {
    const dogsJuliaCreate = dogsJulia.slice();
    const dogsJuliaCreateCorrect = dogsJuliaCreate.slice(1, -2);
    const dogs = dogsJuliaCreateCorrect.concat(dogsKate);
    dogs.forEach((dog, i) => {
        const dogAge = dog >= 3 ? `chó lớn, và nó ${dog} tuổi` : ` chó con 🐶`;
        console.log(`Con chó số ${i + 1} là ${dogAge}`);
    });
    console.log(dogs);
}
checkDogs([3, 5, 2, 12, 7], [4, 1, 15, 8, 3]);
checkDogs([9, 16, 6, 8, 3], [10, 5, 6, 1, 4]);
//
console.log('==============YC3.3===============');
const calcAverageHumanAge = function (dogs) {
    console.log('---Tinh tuoi---');
    const age = dogs.map((dog) => {
        if (dog > 2) {
            return 16 + dog * 4;
        }
        else {
            return dog * 2;
        }
    })
    console.log('Tính tuổi của chó theo tuổi của con người', age);
    console.log('---Loc---');
    const ageFilter = age.filter(dog => dog > 18);
    console.log(' Loại trừ tất cả những chú chó có tuổi nhỏ hơn so với 1 người 18 tuổi', ageFilter);
    console.log('---Tinh trung binh tuoi---');
    const sumAge = ageFilter.reduce((acc, cur) => acc + cur, 0);
    const absAge = sumAge / age.length;
    console.log('Tính tuổi trung bình của các chú chó trưởng thành ra tuổi người', absAge);
}
console.log('Test data 1');
calcAverageHumanAge([5, 2, 4, 1, 15, 8, 3]);
console.log('Test data 2');
calcAverageHumanAge([16, 6, 10, 5, 6, 1, 4]);
console.log('==============YC3.4===============');
const dogs = [
    { weight: 22, curFood: 250, owners: ['Alice', 'Bob'] },
    { weight: 8, curFood: 200, owners: ['Matilda'] },
    { weight: 13, curFood: 275, owners: ['Sarah', 'John'] },
    { weight: 32, curFood: 340, owners: ['Michael'] }
];
//1
dogs.map(dog => {
    dog.recommendedFood = Math.trunc(dog.weight ** 0.75 * 28);
    return dog;
});
console.log(`1.Tìm khẩu phẩn ăn hợp lý (recommended):`, dogs);
//2
const sarahDog = dogs.find(dog => dog.owners.includes('Sarah'));
console.log(`2.Tìm chó của Sarah:`, sarahDog);
if (sarahDog.curFood > sarahDog.recommendedFood * 110 / 100) {
    console.log(`2.Chó của Sarah ăn quá nhiều:`, sarahDog.owners);
}
else if (sarahDog.curFood < sarahDog.recommendedFood * 90 / 100) {
    console.log(`2.Chó của Sarah ăn quá ít:`, sarahDog.owners);
}
else {
    console.log(`2.Chó của Sarah ăn đúng lượng:`, sarahDog.owners);
}
//3
const ownersEatTooMuch = dogs.filter(dog => dog.curFood > dog.recommendedFood * 1.1).flatMap(dog => dog.owners).flat();
console.log(`3.Các chủ nuôi chó ăn quá nhiều:`, ownersEatTooMuch);
const ownersEatTooLittle = dogs.filter(dog => dog.curFood < dog.recommendedFood * 0.9).flatMap(dog => dog.owners).flat();
const ownersEatCorrect = dogs.filter(dog => dog.curFood >= dog.recommendedFood * 0.9 && dog.curFood <= dog.recommendedFood * 1.1);
const ownersEatRight = dogs.filter(dog => dog.curFood === dog.recommendedFood);
console.log(`3.Các chủ nuôi chó ăn quá ít:`, ownersEatTooLittle);
//4
const strMuch = ownersEatTooMuch.join(' và ');
console.log(`4.${strMuch}  nuôi chó ăn quá nhiều`);
const strLitle = ownersEatTooLittle.join(' và ');
console.log(`4.${strLitle}  nuôi chó ăn quá ít`);
//5
console.log(`5.Chú chó nào có khẩu phần ăn chính xác với khẩu phần ăn khuyến 
nghị (output yêu cầu là 'true' hoặc 'false'):`, dogs.some(dog => dog.curFood === dog.recommendedFood));
const checkEatingOkay = dog =>
    dog.curFood > dog.recommendedFood * 0.9 && dog.curFood < dog.recommendedFood * 1.1;
//6.

console.log(`6.Chú chó nào có khẩu phần ăn ở mức hợp lý:`, dogs.some(checkEatingOkay));
//7.
console.log(`7.Tất cả các chú chó có khẩu phần ăn hợp lý:`, dogs.filter(checkEatingOkay));
//8.
const dogsSorted = dogs.slice().sort((a, b) => a.recommendedFood - b.recommendedFood);
console.log(`8.`, dogsSorted);