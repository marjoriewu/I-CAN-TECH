// The number of the correct answer:
const correctAnswer = document.querySelector('#right-answer').innerText;

// Quiz content:
const quizContent = document.querySelector('#quiz-content');

// The quiz options bar:
const quizOptions = document.querySelector('.quiz-options');

// Empty div that takes up the space after quiz options bar has been fixed:
const quizOptionsGhost = document.querySelector('.quiz-options-empty');

// The three clickable options:
const optionItems = document.querySelectorAll('.quiz-option-items');

// Correct answer alert:
const correctAlert = document.querySelector('.quiz-alert-correct');

// Incorrect answer alert:
const incorrectAlert = document.querySelector('.quiz-alert-incorrect');

// Empty alert that takes up the space after alert has been fixed:
const alertGhost = document.querySelector('.alert-empty');

// Variable that tracks if alert is on:
let alertOn = false;

optionItems.forEach((item) => {
  item.addEventListener('click', () => {
    // Remove any previous alert if exists
    correctAlert.classList.add('d-none');
    incorrectAlert.classList.add('d-none');
    if (item.innerText == correctAnswer) {
      item.classList.add('correct-answer');
      correctAlert.classList.remove('d-none');
      alertOn = true;
    } else {
      item.classList.add('incorrect-answer');
      incorrectAlert.classList.remove('d-none');
      alertOn = true;
    }
  });
});

window.addEventListener("scroll", function() {

  if (this.scrollY > (quizContent.clientHeight + 96)) {
    quizOptions.classList.add("quiz-options-fixed");
    quizOptionsGhost.classList.remove('d-none');
    correctAlert.classList.add('quiz-alert-fixed');
    incorrectAlert.classList.add('quiz-alert-fixed');
    if (alertOn) {
      alertGhost.classList.remove('d-none');
    }
  } else {
    quizOptions.classList.remove("quiz-options-fixed");
    quizOptionsGhost.classList.add('d-none');
    correctAlert.classList.remove('quiz-alert-fixed');
    incorrectAlert.classList.remove('quiz-alert-fixed');
    if (alertOn) {
      alertGhost.classList.add('d-none');
    }
  }

});
