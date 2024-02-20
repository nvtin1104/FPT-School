// console.log('Lab1');
const game = {
    team1: 'Bayern Munich',
    team2: 'Borrussia Dortmund',
    players: [
        [
            'Neuer',
            'Pavard',
            'Martinez',
            'Alaba',
            'Davies',
            'Kimmich',
            'Goretzka',
            'Coman',
            'Muller',
            'Gnarby',
            'Lewandowski',
        ],
        [
            'Burki',
            'Schulz',
            'Hummels',
            'Akanji',
            'Hakimi',
            'Weigl',
            'Witsel',
            'Hazard',
            'Brandt',
            'Sancho',
            'Gotze',
        ],
    ],
    score: '4:0',
    scored: ['Lewandowski', 'Gnarby', 'Lewandowski', 'Hummels'],
    date: 'Nov 9th, 2037',
    odds: {
        team1: 1.33,
        x: 3.25,
        team2: 6.5,
    },
};
// Lab 1
// // YC1
// const [players1, players2] = game.players;
// console.log(players1, players2);
// // YC2
// const [gk1, ...fieldPlayers1] = players1;
// const [gk2, ...fieldPlayers2] = players2;
// // YC3
// const allPlayers = [...players1, ...players2];
// //YC4
// const players1Final = [...players1, 'Thiago', 'Coutinho', 'Perisic'];
// //YC5
// const { team1, draw, team2 } = game.odds;
// //YC6
// function printGoals(...players) {
//     console.log(`Cầu thủ đã ghi bàn: ${players}`);
//     console.log(`Số bàn đã ghi bàn: ${players.length}`);
// }
// printGoals(...game.scored);
// team1 > team2 && console.log('Team 1 Thắng');
// team2 > team1 && console.log('Team 2 Thắng');
// // YC2.1
// const { scored } = game;
// for (const [i, value] of scored.entries()) {
//     console.log(`Bàn thắng thứ ${i + 1} : ${value}`);
// }
// // YC2.2
// const { odds } = game;
// const oddsValue = Object.values(odds);
// let sum = 0
// for (const item of oddsValue) {
//     sum += item;
// }
// let tb = sum / oddsValue.length;
// console.log(tb);
// //YC2.3
// for (const [i, value] of Object.entries(odds)) {
//     const str = i === 'x' ? 'Hoà' : `Đội ${game[i]} thắng`;
//     console.log(`Tỉ lệ ${str} là ${value}`)
// }
// // Bonus
// const scorers = {};
// for (const player of game.scored) {
//     scorers[player] ? scorers[player]++ : (scorers[player] = 1);
// }
// console.log(scorers)
// Lab2
console.log('Lab 2');
const gameEvents = new Map([
    [17, '⚽️ GOAL'],
    [36, '🔁 Substitution'],
    [47, '⚽️ GOAL'],
    [61, '🔁 Substitution'],
    [64, '🔶 Yellow card'],
    [69, '🔴 Red card'],
    [70, '🔁 Substitution'],
    [72, '🔁 Substitution'],
    [76, '⚽️ GOAL'],
    [80, '⚽️ GOAL'],
    [92, '🔶 Yellow card'],
]);
// 1
const eventsValue = [...new Set(gameEvents.values())];
console.log('Các sự kiện xảy ra', eventsValue);
// 2
gameEvents.delete(64);
console.log(gameEvents);
// 3
const timeValue = [...new Set(gameEvents.keys())];
const lasttime = timeValue.pop();
console.log(`Trung bình 1 sự kiện xảy ra, trung bình mỗi ${lasttime / timeValue.length}  phút`);
// 4
for (const [time, event] of gameEvents) {
    const str = time <= 45 ? '[Hiệp 1]' : '[Hiệp 2]';
    console.log(`${str} Phút ${time} : ${event}`);
}
// YC2.2
document.body.append(document.createElement('textarea'));
document.body.append(document.createElement('button'));

document.querySelector('button').addEventListener('click', function () {
    const text = document.querySelector('textarea').value;
    const rows = text.split('\n');

    for (const [i, row] of rows.entries()) {
        const arr = row.toLowerCase().trim().split('_');
        let output = '';
        for (const [j, text] of arr.entries()) {
            output += `${text.replace(
                text[0],
                text[0].toUpperCase()
            )}`;
        }
        // const output = `${first}${second.replace(
        //     second[0],
        //     second[0].toUpperCase()
        // )}`;
        console.log(`${output.replace(output[0], output[0].toUpperCase()).padEnd(20)}${'✅'.repeat(i + 1)}`);
    }
});
// YC 2.3
const flights =
    '_Delayed_Departure;fao93766109;txl2133758440;11:25+_Arrival;bru0943384722;fao93766109;11:45+_Delayed_Arrival;hel7439299980;fao93766109;12:05+_Departure;fao93766109;lis2323639855;12:30';

// 🔴 Delayed Departure from FAO to TXL (11h25)
//              Arrival from BRU to FAO (11h45)
//   🔴 Delayed Arrival from HEL to FAO (12h05)
//            Departure from FAO to LIS (12h30)

const getCode = str => str.slice(0, 3).toUpperCase();

for (const flight of flights.split('+')) {
    const [type, from, to, time] = flight.split(';');
    const output = `${type.startsWith('_Delayed') ? '🔴' : ''}${type.replaceAll(
        '_',
        ' '
    )} ${getCode(from)} ${getCode(to)} (${time.replace(':', 'h')})`.padStart(36);
    console.log(output);
}

(function () {
    const header = document.querySelector('h1');
    header.style.color = 'red';

    document.querySelector('body').addEventListener('click', function () {
        header.style.color = 'blue';
    });
})();

