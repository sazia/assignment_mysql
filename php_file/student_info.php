<?php
//var_dump($_POST);

$name = $_POST['nameText'];
$created = $_POST['createdNumber'];
 
$link = mysql_connect("localhost", "root","" );

$db_selected = mysql_select_db("ftfl3_db", $link);


if ($db_selected) {
    echo "database connected";
}

mysql_query ("INSERT into students(name,created) values ('$name','$created')"); 

?>

  