<?php
//var_dump($_POST);

$title= $_POST['titleText'];
$code = $_POST['code'];
 
$link = mysql_connect("localhost", "root","" );

$db_selected = mysql_select_db("ftfl3_db", $link);


if ($db_selected) {
    echo "database connected";
}

mysql_query ("INSERT into courses(title,code) values ('$title','$code')"); 

?>
