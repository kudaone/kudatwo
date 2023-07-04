// Function to click the button
function clickButton() {
  var button = document.querySelector('button[type="submit"]');
  button.click();

  // Schedule the next click after 60 minutes
  setTimeout(clickButton, 60 * 60 * 1000);
}

// Start the initial click after 60 minutes
setTimeout(clickButton, 60 * 60 * 1000);
