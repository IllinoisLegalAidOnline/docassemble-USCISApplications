// Example JavaScript file content
document.addEventListener('daPageLoad', function() {
    var button = document.getElementById('make_all_false');
    if (button) { // Check if button exists to avoid null errors
      button.addEventListener('click', function() {
        document.querySelectorAll('input[type="radio"][value="False"]').forEach(function(noOption) {
          noOption.click();
        });
      });
    }
  });
  