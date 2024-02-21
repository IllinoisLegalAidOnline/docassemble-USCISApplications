$(document).on('daPageLoad', function() {
  // Find the button by its ID
  var button = document.getElementById('make_all_false');
  if (button) {
      // Add click event listener to the button
      button.addEventListener('click', function(event) {
          // Prevent the default button action (e.g., form submission)
          event.preventDefault();

          // Get all radio inputs
          var radios = document.querySelectorAll('input[type="radio"]');

          // Organize them by name (group)
          var groups = {};
          radios.forEach(function(radio) {
              if (!groups[radio.name]) {
                  groups[radio.name] = [];
              }
              groups[radio.name].push(radio);
          });

          // Check each group to see if it's unset, then set to "False" if so
          Object.keys(groups).forEach(function(name) {
              var group = groups[name];
              var isSet = group.some(function(radio) {
                  return radio.checked;
              });
              // If none in the group is checked, find the False option and click it
              if (!isSet) {
                  var falseOption = group.find(function(radio) {
                      return radio.value === "False";
                  });
                  if (falseOption) {
                      falseOption.click();
                  }
              }
          });
      });
  }
});
