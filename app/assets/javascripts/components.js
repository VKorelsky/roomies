// get rid of flash notifications on click
document.addEventListener('DOMContentLoaded', function() {
    document.querySelector('.click_to_hide').addEventListener('click', function(e) {
      e.style.display = 'none';
    })
})
