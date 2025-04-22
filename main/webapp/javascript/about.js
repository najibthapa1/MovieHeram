
document.addEventListener('DOMContentLoaded', function() {
    // Get all modal buttons
    const modalButtons = document.querySelectorAll('.card-button');
    const closeButtons = document.querySelectorAll('.close');
    
    // Add click event to each modal button
    modalButtons.forEach(button => {
        button.addEventListener('click', function() {
            const modalId = this.getAttribute('data-modal');
            document.getElementById(modalId).style.display = 'block';
        });
    });
    
    // Add click event to each close button
    closeButtons.forEach(button => {
        button.addEventListener('click', function() {
            this.closest('.modal').style.display = 'none';
        });
    });
    
    // Close modal when clicking outside
    window.addEventListener('click', function(event) {
        if (event.target.classList.contains('modal')) {
            event.target.style.display = 'none';
        }
    });
});