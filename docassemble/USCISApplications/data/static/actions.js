$(document).on('daPageLoad', function(){    // Find the button by its ID
    var button = document.getElementById('make_all_false');
  
    // Add click event listener to the button
    button.addEventListener('click', function(event) {
      // Prevent the default button action (e.g., form submission)
      event.preventDefault();
  
      // Select all radio inputs with value "False" and click them to set to "No"
      document.querySelectorAll('input[type="radio"][value="False"]').forEach(function(noOption) {
        noOption.click();
      });
    });
  });
  