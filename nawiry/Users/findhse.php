
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Find Fellowship</title>
</head>
<body>
<!-- Create a form with a drop-down menu where users can select a location -->
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
    <label for="location">Please select your location:</label><br>
    
    <select name="location" id="location">
        <option value="">Select a location</option>
        <option value="location1">Location 1</option>
        <option value="location2">Location 2</option>
        <option value="location3">Location 3</option>
        <option value="location4">Location 4</option> 
        <option value="location5">Location 5</option> 
        <option value="location6">Location 6</option> 
        <option value="location7">Location 7</option> 
        <option value="location8">Location 8</option> 
        <option value="location9">Location 9</option> 
        <option value="location10">Location 10</option> 
        <option value="location11">Location 11</option> 
        <option value="location12">Location 12</option> 
    </select>

    <br><br>

    <!-- Submit button -->
    <input type="submit" value="Submit">
</form>
</body>
</html>

<?php
//Initialize the house Fellowships
$fellowship1 = "Bread Of Life";
$fellowship2 = "True Vine";
$fellowship3 = "Queen Esther";
$fellowship4 = "House Of Praise";
$fellowship5 = "Mwangaza";
$fellowship6 = "Joy Of The Lord";
$fellowship7 = "Kadosh";
$fellowship8 = "New Life";
$fellowship9 = "Abundant Grace";
$fellowship10 = "Bethel";
$fellowship11 = "King's Outreach";
$fellowship12 = "Wonderful";


//Innitialize the locations
$location1 = "Safari";
$location2 = "Nyali";
$location3 = "Nyali West";
$location4 = "Kadongo";
$location5 = "Bombolulu";
$location6 = "Bamburi";
$location7 = "Mikindani";
$location8 = "Mombasa CBD";
$location9 = "Junda";
$location10 = "Mtwapa";
$location11 = "Tudor";
$location12 = "Lights";

// Check if the form was submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get the selected location from the form
    $selected_location = $_POST['location'];

    // Check the selected location and display a message about the corresponding house fellowship
    if ($selected_location == 'location1') {
        echo "You belong to $fellowship1 house fellowship at $location1.";
    } else if ($selected_location == 'location2') {
        echo "You belong to $fellowship2 house fellowship at $location2.";
    } else if ($selected_location == 'location3') {
        echo "You belong to $fellowship3 house fellowship at $location3.";
    } else if ($selected_location == 'location4') {
        echo "You belong to $fellowship4 house fellowship at $location4.";
    } else if ($selected_location == 'location5') {
        echo "You belong to $fellowship5 house fellowship at $location5.";
    } else if ($selected_location == 'location6') {
        echo "You belong to $fellowship6 house fellowship at $location6.";
    } else if ($selected_location == 'location7') {
        echo "You belong to $fellowship7 house fellowship at $location7.";
    } else if ($selected_location == 'location8') {
        echo "You belong to $fellowship8 house fellowship at $location8.";
    } else if ($selected_location == 'location9') {
        echo "You belong to $fellowship9 house fellowship at $location9.";
    } else if ($selected_location == 'location10') {
        echo "You belong to $fellowship10 house fellowship at $location10.";
    } else if ($selected_location == 'location11') {
        echo "You belong to $fellowship11 house fellowship at $location11.";
    } else if ($selected_location == 'location12') {
        echo "You belong to $fellowship12 house fellowship at $location12.";
    }    else {
        echo "Please select a valid location from the drop-down menu.";
    }
}
