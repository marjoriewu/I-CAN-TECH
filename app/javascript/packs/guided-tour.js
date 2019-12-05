import introJs from 'intro.js';

window.onload = function() {
  const stepId = document.querySelector(".wenjun").id;
  console.log(stepId);
  introJs(".jombotrom").setOption('doneLabel', 'Next page').start().oncomplete(function() {
          window.location.href = `${parseInt(stepId, 10) + 1}`;
        });
};
