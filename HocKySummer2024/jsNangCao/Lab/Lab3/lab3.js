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