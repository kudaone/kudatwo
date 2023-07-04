// Function to click the button
function clickButton() {
  var buttons = document.getElementsByTagName('button');
  var index = 3; // Index of the button to click (0-based index)

  if (index < buttons.length) {
    buttons[index].click();
  }
  
  // Schedule the next click after 60 minutes
  setTimeout(clickButton, 60 * 60 * 1000);
}

// Start the initial click after 60 minutes
setTimeout(clickButton, 60 * 60 * 1000);
