<!-- Create a form with a drop-down menu where users can select a location -->
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
    <label for="location">Please select your location:</label><br>
    <select campaign
    
    <select name="location" id="location">
        <option value="">Select a location</option>
        <option value="location1">Location 1</option>
        <option value="location2">Location 2</option>
        <option value="location3">Location 3</option>
        <option value="location4">Location 4</option>
    </select>

    <br><br>

    <!-- Submit button -->
    <input type="submit" value="Submit">
</form>

<?php
// Check if the form was submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get the selected location from the form
    $selected_location = $_POST['location'];

    // Check the selected location and display a message about the corresponding house fellowship
    if ($selected_location == 'location1') {
        echo "You belong to the house fellowship at Location 1.";
    } else if ($selected_location == 'location2') {
        echo "You belong to the house fellowship at Location 2.";
    } else if ($selected_location == 'location3') {
        echo "You belong to the house fellowship at Location 3.";
    } else if ($selected_location == 'location4') {
        echo "You belong to the house fellowship at Location 4.";
    } else {
        echo "Please select a valid location from the drop-down menu.";
    }
}
