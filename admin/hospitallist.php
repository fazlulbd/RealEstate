<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inbox</title>
    <link rel="stylesheet" href="css/contact/navbar.css">
    <link rel="stylesheet" href="css/contact/forms.css">
 
</head>
<body>

<?php
        $DB_HOST = "localhost";
        $DB_USER = "root";
        $DB_PASSWORD = "";
        $DB_NAME = "db_realestate";
        $conn = new mysqli($DB_HOST,$DB_USER,$DB_PASSWORD,$DB_NAME);

        $fetc = "SELECT * FROM tbl_hospital";
        $result = $conn->query($fetc);

        if ($result->num_rows > 0) {
            echo "<div class='content'>";
            echo "<table border='1' align='center'>
                <tr>
                <th colspan='8'><h1 align='center'>Patient's List</h1></th>
                </tr>
                <tr>
                    <th>ID</th>
                    <th>Student Name</th>
                    <th>Father's Name</th>
                    <th>Reason</th>
                    <th>Phone</th>
                    <th>Age</th>
                    <th>Email Id</th>
                    <th>Description</th>

               </tr>";
            // output data of each row 
            //full_name, mob_no, email_id, age, gender, blood_group, Addres, messages
            while($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td rowspan='1'>" . $row["id"]. "</td>
                    <td>" . $row["patient_name"]. "</td>
                    <td>" . $row["father_name"]. "</td>
                    <td>" . $row["reason"]. "</td>
                    <td>" . $row["patient_phone"]. "</td>
                    <td>" . $row["patient_age"]. "</td>
                    <td>" . $row["email_address"]. "</td>
                   <td colspan='4'>  " . $row["msg"]. "</td>
                    </tr>";
            }
            echo "</table>";
            echo "</div>";
        }
        else {
            echo "0 results";
        }


    ?>
     <div class="clearfix"></div>
</body>
</html>

