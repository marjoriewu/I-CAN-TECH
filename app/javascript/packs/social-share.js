const shareBtn = document.querySelector('#share-btn');
console.log("haha");
shareBtn.addEventListener('click', () => {
  if (navigator.share) {
    navigator.share({
      title: '学习使用手机软件!',
      text: '教长辈学习如何使用滴滴打车，高德地图，微信视频通话等手机软件',
      url: 'https://icantech.wogengapp.cn/'
    }).then(() => {
      console.log('感谢分享!');
    })
    .catch(err => {
      console.log(`无法分享`, err.message);
    });
  } else {
    console.log('不支持网页分享');
  }
});
