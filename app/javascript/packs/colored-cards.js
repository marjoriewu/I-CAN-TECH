const cards = document.querySelectorAll('.card');

cards.forEach((card) => {
  const category = card.querySelector('h5').innerText;
  if ( category === "学会打车") {
    card.classList.add('yellow-card');
  } else if (category === "查询公交") {
    card.classList.add('red-card');
  } else if (category === "视频通话") {
    card.classList.add('blue-card');
  } else if (category === "网上购物") {
    card.classList.add('green-card');
  } else if (category === "收养宠物") {
    card.classList.add('brown-card');
  }
});
