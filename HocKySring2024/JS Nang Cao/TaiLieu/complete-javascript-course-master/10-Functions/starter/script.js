'use strict';
const oneWord = function (str) {
    return str.replace(/ /g, '').toLowerCase();
}
const upperFirstWord = function (str) {
    const [first, ...others] = str.split(' ');
    return [first.toUpperCase(), ...others].join(' ');
}