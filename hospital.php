<?php
        
        include('inc/header.php');
        include('include/header.php');
        include('configcon.php');
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/contact/style.css">
<link rel="stylesheet" href="css/contact/contact.css">
<title>contact</title>
</head>
<body>


   <!--contact------------------------->
<section id="canteens">

<div class="container">

    <div id="fcf-form">
    <h3 style="text-align: center;" class="fcf-h3">Dream Life Hospital</h3>

    <form id="fcf-form-id" class="fcf-form-class" method="post">
        
        <div class="fcf-form-group">
            <label for="Name" class="fcf-label">Patient's Name</label>
            <div class="fcf-input-group">
                <input type="text" id="Name" name = "patient_name" class="fcf-form-control" required>
            </div>
        </div>

        <div class="fcf-form-group">
            <label for="Name" class="fcf-label">Father's Name</label>
            <div class="fcf-input-group">
                <input type="text" id="Name" name = "father_name" class="fcf-form-control" required>
            </div>
        </div>

        <div class="fcf-form-group">
            <label for="Name" class="fcf-label">Reason</label>
            <div class="fcf-input-group">
                <input type="text" id="Name" name = "reason" class="fcf-form-control" required>
            </div>
        </div>

        <div class="fcf-form-group">
            <label for="number" class="fcf-label">Phone</label>
            <div class="fcf-input-group">
                <input type="number" id="number" name = "patient_phone" class="fcf-form-control" required>
            </div>
        </div>

        <div class="fcf-form-group">
            <label for="number" class="fcf-label">Age</label>
            <div class="fcf-input-group">
                <input type="number" id="number" name = "patient_age" class="fcf-form-control" required>
            </div>
        </div>

        <div class="fcf-form-group">
            <label for="Email" class="fcf-label">Email - Address</label>
            <div class="fcf-input-group">
                <input type="email" id="Email" name = "email_address" class="fcf-form-control" required>
            </div>
        </div>

        <div class="fcf-form-group">
            <label for="Message" class="fcf-label">Description</label>
            <div class="fcf-input-group">
                <textarea id="Message" name="msg" class="fcf-form-control" rows="6" maxlength="3000" required></textarea>
            </div>
        </div>
        <center>
        <div class="fcf-form-group">
            
            <button type="submit" id="fcf-button" name = "submit_info" class="fcf-btn fcf-btn-primary fcf-btn-lg fcf-btn-block" style="text-align: center;">Apply</button>
        </div>
    </center>
    </form>
    </div>

</div>
<?php

if(isset($_POST["submit_info"])){
    $pnames = $_POST["patient_name"];
    $pfnames = $_POST["father_name"];
    $rea = $_POST["reason"];
    $pphone = $_POST["patient_phone"];
    $page = $_POST["patient_age"];
    $emails = $_POST["email_address"];
    $messg = $_POST["msg"];
    $sql = "INSERT INTO tbl_hospital(patient_name,father_name, reason, patient_phone, patient_age, email_address,msg)
   VALUES('$pnames', ' $pfnames', ' $rea', '$pphone', '$page', '$emails','$messg');";
   if ($conn->query($sql) === TRUE) {
      echo '<script type="text/JavaScript">  
      alert("Send Message Successfull, Thanks for Your Concern");
      </script>';
    }
    
    else {
      echo "Send Message Unsuccessfull " . $conn->error;
    }
   }
?>

</section> 
</body>
</html>

<?php include 'inc/footer.php'; ?>