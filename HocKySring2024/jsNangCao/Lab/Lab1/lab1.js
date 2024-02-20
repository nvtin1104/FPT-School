console.log('Lab1');
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
// YC1
const [players1, players2] = game.players;
console.log(players1, players2);
// YC2
const [gk1, ...fieldPlayers1] = players1;
const [gk2, ...fieldPlayers2] = players2;
// YC3
const allPlayers = [...players1, ...players2];
//YC4 
const players1Final = [...players1, 'Thiago', 'Coutinho', 'Perisic'];
//YC5
const { team1, draw, team2 } = game.odds;
//YC6 
function printGoals(...players) {
    console.log(`Cầu thủ đã ghi bàn: ${players}`);
    console.log(`Số bàn đã ghi bàn: ${players.length}`);
}
printGoals(...game.scored);
team1 > team2 && console.log('Team 1 Thắng');
team2 > team1 && console.log('Team 2 Thắng');
// YC2.1
const { scored } = game;
for (const [i, value] of scored.entries()) {
    console.log(`Bàn thắng thứ ${i + 1} : ${value}`);
}
// YC2.2
const { odds } = game;
const oddsValue = Object.values(odds);
let sum = 0
for (const item of oddsValue) {
    sum += item;
}
let tb = sum / oddsValue.length;
console.log(tb);
//YC2.3
for (const [i, value] of Object.entries(odds)) {
    const str = i === 'x' ? 'Hoà' : `Đội ${game[i]} thắng`;
    console.log(`Tỉ lệ ${str} là ${value}`)
}
// Bonus
const scorers = {};
for (const player of game.scored) {
    scorers[player] ? scorers[player]++ : (scorers[player] = 1);
}
console.log(scorers)