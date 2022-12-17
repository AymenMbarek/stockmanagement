<?php
session_start();
include('../connect.php');
$a = $_POST['name'];
$b = $_POST['address'];
$c = $_POST['contact'];
$d = $_POST['memno'];
$e = $_POST['prod_name'];
$f = $_POST['note'];
$g = $_POST['date'];
$h = $_POST['type'];
$i = $_POST['sexe'];
$j = $_POST['datepr'];
$k = $_POST['email'];
// query
$sql = "INSERT INTO customer (customer_name,address,contact,membership_number,prod_name,note,expected_date,type,sexe,datepr,email) VALUES (:a,:b,:c,:d,:e,:f,:g,:h,:i,:j,:k)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':g'=>$g,':h'=>$h,':i'=>$i,':j'=>$j,':k'=>$k));
header("location: customer.php");


?>