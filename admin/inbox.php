<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inbox</title>
    <link rel="stylesheet" href="css/contact/contact1.css">
    <link rel="stylesheet" href="css/contact/contact.css">
 
</head>
<body>

<?php
        $DB_HOST = "localhost";
        $DB_USER = "root";
        $DB_PASSWORD = "";
        $DB_NAME = "db_realestate";
        $conn = new mysqli($DB_HOST,$DB_USER,$DB_PASSWORD,$DB_NAME);

        $fetc = "SELECT * FROM tbl_contact";
        $result = $conn->query($fetc);

        if ($result->num_rows > 0) {
            echo "<div class='content'>";
            echo "<table border='1' align='center'>
                <tr>
                <th colspan='8'><h1 align='center'>Inbox</h1></th>
                </tr>
                <tr>
                    <th>ID</th>
                    <th>Full Name</th>
                    <th>Mobile Number</th>
                    <th>Email Id</th>
                    <th>Message</th>

               </tr>";
            // output data of each row 
            //full_name, mob_no, email_id, age, gender, blood_group, Addres, messages
            while($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td rowspan='1'>" . $row["id"]. "</td>
                    <td>" . $row["your_name"]. "</td>
                    <td>" . $row["your_no"]. "</td>
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

