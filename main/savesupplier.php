<?php
session_start();
include('../connect.php');
$a = $_POST['name'];
$b = $_POST['address'];
$c = $_POST['contact'];
$d = $_POST['cperson'];
$e = $_POST['note'];
$f = $_POST['siret'];
$g = $_POST['tva'];
$h = $_POST['idsociete'];
$i = $_POST['infobancaire'];
// query
$sql = "INSERT INTO supliers (suplier_name,suplier_address,suplier_contact,contact_person,note,siret,tva,idsociete,infobancaire) VALUES (:a,:b,:c,:d,:e,:f,:g,:h,:i)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':g'=>$g,':h'=>$h,':i'=>$i));
header("location: supplier.php");


?>