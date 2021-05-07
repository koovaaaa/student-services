<?php
require "connection.php";
session_start();
$sql = "select * from subjects INNER join grades on subjects.id = grades.subject_id where grades.user_id = {$_SESSION['loggedInUser']['ID']}";



if ($_GET["year"] != "")
{
    $sql .= " AND subjects.year = {$_GET['year']}";
}

$result = $db->query($sql);

$subjects = [];

if ($result->num_rows > 0)
{
    while($row = $result->fetch_assoc())
    {
        $subjects[] = $row;
    }
}


$response = "";

foreach ($subjects as $subject)
{
    $response .= "<tr><td>{$subject['name']}</td><td>{$subject['year']}</td><td class='ocjena'>{$subject['grade']}</td></tr>";
}

echo $response;

?>