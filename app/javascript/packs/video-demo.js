const video = document.querySelector('video');
video.addEventListener('ended', () => {
  document.querySelector('.button-green').classList.remove('invisible');
  document.querySelector('.overlay').classList.remove('invisible');
  video.controls = false;
});
