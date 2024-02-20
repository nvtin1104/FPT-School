'use strict';

console.log('----8.2 và 8.3----');

const wait = function (seconds) {
  return new Promise(function (resolve) {
    setTimeout(resolve, seconds * 1000);
  });
};

const imgContainer = document.querySelector('.images');

const createImage = function (imgPath) {
  return new Promise(function (resolve, reject) {
    const img = document.createElement('img');
    img.src = imgPath;

    img.addEventListener('load', function () {
      imgContainer.append(img);
      resolve(img);
    });

    img.addEventListener('error', function () {
      reject(new Error('Hình ảnh không tồn tại'));
    });
  });
};

let currentImg;

createImage('img/img-1.jpg')
  .then(img => {
    currentImg = img;
    console.log('1 hình ảnh được load lên');
    return wait(2);
  })
  .then(() => {
    currentImg.style.display = 'none';
    return createImage('img/img-2.jpg');
  })
  .then(img => {
    currentImg = img;
    console.log('2 hình ảnh được load lên');
    return wait(2);
  })
  .then(() => {
    currentImg.style.display = 'none';
  })
  .catch(err => console.error(err));
// 8.3

// PART 1
const loadNPause = async function () {
  try {
    // Load image 1
    let img = await createImage('img/img-1.jpg');
    console.log('1 hình ảnh đươc tải lên theo cách 2');
    await wait(2);
    img.style.display = 'none';

    // Load image 1
    img = await createImage('img/img-2.jpg');
    console.log('2 hình ảnh được tải lên theo cách 2');
    await wait(2);
    img.style.display = 'none';
  } catch (err) {
    console.error(err);
  }
};
// Tạm dừng loadNPause() để chạy LoadAll()
loadNPause();
// Nhận xét: 
/*
Về cách 1 có các ưu điểm sau: 
- Phần này sử dụng Promise và .then() để xử lý tuần tự các tác vụ.
- Mỗi lời gọi .then() thực hiện một tác vụ cụ thể (tải hình ảnh, ẩn hình ảnh) và trả về một Promise để chờ đợi hoàn thành theo thứ tự.
- Ngoài ra còn sử dụng .catch() để xử lý lỗi nếu có.
-> Nhược điểm: Khi có nhiều tác vụ phức tạp, việc sử dụng nhiều lời gọi .then() có thể dẫn đến mã lồng nhau khó đọc và khó hiểu.
Về cách 2 có các ưu điểm sau:
- Phần này sử dụng async và await để viết mã đồng bộ hơn, dễ đọc hơn.
- Sử dụng await để chờ cho đến khi một Promise được giải quyết, giống như việc sử dụng .then() nhưng cú pháp gọn gàng hơn và dễ hiểu hơn
- Có thể sử dụng cấu trúc try...catch để xử lý lỗi, lỗi được xử lý trực tiếp không phải đợi làm cho việc xử lý lỗi trở nên dễ dàng hơn so với Promise.
-> Nhược điểm: Khó thực hiện việc xử lý nhiều Promise đồng thời. Trong một số trường hợp, việc xử lý nhiều Promise đồng thời có thể trở nên phức tạp hơn với async/await.
=> Cả hai cách đều có ưu và nhược điểm riêng, tùy thuộc vào tình huống cụ thể mà chúng ta sẽ sử dụng cách nào phù hợp. Tuy nhiên  việc sử dụng async/await dễ vì mã dễ đọc và dễ hiểu hơn. 
*/
// PART 2
const loadAll = async function (imgArr) {
  try {
    const imgs = imgArr.map(async img => await createImage(img));
    const imgsEl = await Promise.all(imgs);
    console.log(imgsEl);
    imgsEl.forEach(img => img.classList.add('parallel'));
  } catch (err) {
    console.error(err);
  }
};
// Tắt loadPart1() và loadPart2 để chạy loadAll()
// loadAll(['img/img-1.jpg', 'img/img-2.jpg', 'img/img-3.jpg']);
