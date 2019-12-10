// The number of the correct answer:
const correctAnswer = document.querySelector('#right-answer').innerText;

// The three clickable options:
const optionItems = document.querySelectorAll('.quiz-option-items');

// Correct answer alert:
const correctAlert = document.querySelector('.quiz-alert-correct');

// Incorrect answer alert:
const incorrectAlert = document.querySelector('.quiz-alert-incorrect');

optionItems.forEach((item) => {
  item.addEventListener('click', () => {
    // Remove any previous alert if exists
    correctAlert.classList.add('d-none');
    incorrectAlert.classList.add('d-none');
    if (item.innerText == correctAnswer) {
      item.classList.add('correct-answer');
      correctAlert.classList.remove('d-none');
    } else {
      item.classList.add('incorrect-answer');
      incorrectAlert.classList.remove('d-none');
    }
  });
});
