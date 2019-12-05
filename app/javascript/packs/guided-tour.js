// var anno1 = new Anno({
//   target : 'pre:first',
//   content: 'This is an annotation'
// })


var tour = new Tour({
  steps: [
  {
    element: "#my-element",
    title: "Title of my step",
    content: "Content of my step"
  },
  {
    element: "#my-other-element",
    title: "Title of my step",
    content: "Content of my step"
  }
]});

// Initialize the tour
tour.init();

// Start the tour
tour.start();
