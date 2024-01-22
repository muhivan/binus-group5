<?php
	include 'header.php';
?>
<style>
	.hero-unit {
	background: #fff url(img/bg-k10.png);
	padding: 13px 13px 13px 15px;
	margin: 20px auto;
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
	font-size: 14px !important;
}
.unit{
    padding: 13px 13px 13px 15px;
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
    font-style: italic;
}
</style>


<div id="wrapper">
		<div class="container">
            <div class="table-responsive">
	            <div class="title"><h3 style="margin-top: 70px;">Form Bukti Pembayaran</h3></div>
	        	<div class="hero-unit">
	        	<div class="unit">Silahkan Transfer kerekening ini 123-456-789 Bank BNI a/n PIC Binus Group 5</div>
	           	<div class="unit">Silahkan mengupload bukti pembayaran sesuai dengan total belanja Anda! </div>
	        

    <?php
        $_SESSION['total_harga'] = $_POST['total_harga'];
        $_SESSION['id_produk'] = $_POST['id_produk'];
        $_SESSION['jumlah'] = $_POST['jumlah'];
        $_SESSION['alamat'] = $_POST['alamat'];
        $_SESSION['nohp'] = $_POST['nohp'];
    ?>

<form id="formku" action="checkout.php" method="POST" enctype="multipart/form-data">
	      <div class="cont">
	      <span>Bukti Pembayaran</span>
	      <input type="file" name="bukti" style="margin-left: -11px;">
	      <a href="index.php" class="btn btn-sm btn-primary" style="background: #4CAF50;">Kembali</a>
	      <input type="submit" value="Pesan Sekarang" name="finish"  class="btn btn-sm btn-primary" style="margin-right:-30px;background: #4CAF50;">
		</div>
	</form>
</div>
</div>
</div>
<style>
.cont {
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=file] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border-radius: 3px;
}


</style>


<?php
	include 'footer.php';
?>