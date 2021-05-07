<?php
session_start();
if(empty($_SESSION['loggedInUser']))
{
    header("Location: login.php");
}
require "connection.php";
$sql = "SELECT DISTINCT subjects.year from subjects inner join grades on subjects.id = grades.subject_id where grades.user_id = '{$_SESSION['loggedInUser']['ID']}'";
$query = mysqli_query($db, $sql);
$years = [];

if($query->num_rows>0)
{
    while($result = mysqli_fetch_assoc($query)){
        $years[] = $result;
    }
}
$db->close();
?>

<html>
<head>
    <title>II KOL Site Index</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="indexStyle.css">
</head>
<body>

<div class="container">
    <div class="header">
        <h1>II Kol Site Index</h1>
        <p>Welcome <strong><?php echo $_SESSION['loggedInUser']['firstname'] ?>, </strong><a href="logout.php">Logout</a></p>
    </div>
    <div class="clr"></div>
    <div class="center">
        <label for="godina">Godina:</label>
        <select name="godina" id="godina">
            <option value=""></option>
            <?php
            foreach($years as $year)
            {
                echo "<option value='{$year['year']}'>{$year['year']}</option>";
            }
            ?>
        </select>
        <table>
            <thead>
            <tr><th>Predmet</th><th>Godina</th><th>Ocjena</th></tr>
            </thead>
            <tbody id="result">

            </tbody>
        </table>
    </div>
</div>

<script src="getData.js"></script>
</body>
</html>
