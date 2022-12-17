<?php include 'header.php'; ?>
<?php include('navfixed.php');?>
    <div class="container-fluid">
      <div class="row-fluid">
	
	
	<div class="contentheader">
			<i class    ="icon-dashboard"></i> Tableau de bord
			</div>
			<ul class="breadcrumb">
			<li class="active">Tableau de bord</li>
			</ul>
			<font style=" font:bold 25px 'Aleo'; color:#0489bd;"><center><div class="input-prepend" >
	<img src="../logo/logo.png" width="250">
		</div></center></font>
<div id="mainmain">
	<?php
$position=$_SESSION['SESS_LAST_NAME'];
if($position=='Cashier') {
?>
 <a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i><br> Ventes</a>
  <a href="sales2.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i><br> devis</a>
<a href="customer.php"><i class="icon-group icon-2x"></i><br> Clients</a>  

<a href="../index.php"><i class="icon-signout icon-2x"></i><br>Logout</a>   
<?php
}
if($position=='admin') {
?>

<a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i><br> Ventes</a>   
 <a href="sales2.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i><br> Devis</a>             
<a href="products.php"><i class="icon-list-alt icon-2x"></i><br> Produits</a>                
<a href="cat.php"><i class="icon-list-alt icon-2x"></i><br> Categories</a>     
<a href="customer.php"><i class="icon-group icon-2x"></i><br> Clients</a>     
<a href="supplier.php"><i class="icon-group icon-2x"></i><br> Fournisseurs</a>     
<a href="salesreport.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i><br> Rapport des ventes</a>     
<a href="admin-settings.php"><i class="icon-flag icon-2x"></i><br> Gestionnaire d'utilisateurs</a>  
<?php 
    }                   
    ?>
<div class="clearfix"></div>
</div>
</div>
</div>
</body>
<?php include('footer.php'); ?>
</html>
