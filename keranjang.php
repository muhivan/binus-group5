<?php
require_once('header.php');
?>

<style>
</style>

<div id="page-title" style="margin-top: 50px; background: grey; border-bottom: 5px solid grey;">
    <h2 style="margin-left:20px;"><i class="ico-shopping-cart ico-white"></i>Keranjang</h2>
</div>

<div class="container">
    <div class="check">
        <div class="col-md-9 cart-items" style="margin-top: -40px;">
            <ul class="back" style="text-align: center;">
                <li style="font-size: 16px; margin-left: -13px;"><i class="back_arrow"> </i>Pesan lagi di<a href="produk.php" style="color: purple;"> Halaman Produk</a></li>
            </ul>

            <?php
            $total = 0;
            if (isset($_SESSION['items'])) {
                foreach ($_SESSION['items'] as $item_id => $quantity) {
                    $query = mysqli_query($koneksi, "select * from produk where id_produk = '$item_id'");
                    $product = mysqli_fetch_array($query);
                    $item_total = $product['harga'] * $quantity;
                    $total += $item_total;
                    $product_id = $product['id_produk'];
                    $item_quantity = $quantity;

                    if (isset($_SESSION['username'])) {
                        $user_id = $_SESSION['id_users'];
                        $user_name = $_SESSION['nama'];
                    }
                    ?>
                    <div class="cart-header">
                        <a onclick="if(confirm('Apakah anda yakin ingin menghapus pesanan ini ??')){ location.href='tambahkanbarang.php?act=del&barang_id=<?php echo $item_id; ?>&ref=keranjang.php';}"><div class="close1"> </div></a>
                        <div class="cart-sec simpleCart_shelfItem">
                            <div class="cart-item cyc">
                                <img src="admin/gambar/<?= $product['gambar'] ?>" class="img-responsive" alt="" style="height: 190px; width: 170px;"/>
                            </div>
                            <div class="cart-item-info">
                                <h3><?= $product['nama'] ?></h3>
                                <span><h4><?= $product['deskripsi'] ?></h4></span>
                                <ul class="qty">
                                    <li><h3>Jumlah : <?= $item_quantity ?></h3></li>
                                    <li><a href="tambahkanbarang.php?act=min&barang_id=<?php echo $item_id; ?>&ref=keranjang.php" class='btn btn-danger'><span class="glyphicon glyphicon-minus"></span> </a></li>
                                    <li><a href="tambahkanbarang.php?act=plus&barang_id=<?php echo $item_id; ?>&ref=keranjang.php" class='btn btn-success'><span class="glyphicon glyphicon-plus"></span></a></li>
                                </ul>
                                <div class="delivery">
                                    <h3><p> Rp. <?= number_format($item_total, 2, ",", ".") ?></p></h3>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <?php
                }
            }
            ?>
        </div>
        <div class="col-md-5 cart-total" style="font-size: 20px;">
            <div class="price-details">
                <h3>Detail Harga</h3>
                <span>Total</span>
                <h4>Rp. <?= number_format($total, 2, ",", ".") ?></h4>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>