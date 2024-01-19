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