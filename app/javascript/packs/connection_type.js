$( document ).ready(function() {
    $('#connection_type').change(function() {    
        document.getElementById('connection_connection_type').value = $(this).val();
    });
});