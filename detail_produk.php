<?php
    include 'header.php';
    $id_produk = htmlspecialchars($_GET['id']);
    $produk = mysqli_prepare($koneksi, "SELECT * FROM produk WHERE id_produk = ?");
    mysqli_stmt_bind_param($produk, "i", $id_produk);
    mysqli_stmt_execute($produk);
    $p = mysqli_stmt_get_result($produk);
    $p = mysqli_fetch_array($p);
?>
<div class="single_top">
    <div class="container">
        <div class="single_grid">
            <nav aria-label="breadcrumb" style="margin-top: 30px;">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.php" style="color: #007bff;"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
                    <li class="breadcrumb-item"><a href="produk.php" style="color: #007bff;">Produk</a></li>
                </ol>
            </nav>
            <div class="grid images_3_of_2">
                <img src="admin/gambar/<?=$p['gambar']?>" width="300" height="270" alt="<?=$p['nama']?>">
                <div class="clearfix"></div>
            </div>
            <div class="desc1 span_1_of_3">
                <h1><?php echo htmlspecialchars($p['nama'])?></h1>
                <p>Deskripsi : <?=$p['deskripsi']?></p>
                <form id="add-to-cart-form" action="tambahkanbarang.php?act=add&barang_id=<?php echo htmlspecialchars($p['id_produk']);?>&ref=keranjang.php?kd=<?php echo htmlspecialchars($p['id_produk']);?>" method="POST" enctype="multipart/form-data">
                    <div class="simpleCart_shelfItem">
                        <div class="price_single">
                            <div class="head"><h3>Rp. <?= number_format($p['harga'])?>,-</h3></div>
                            <div class="clearfix"></div>
                        </div>
                        <table class="table">
                            <tr>
                                <td width="40">Jumlah</td>
                                <td><input type="number" name="jumlah" class="form-control input-sm" min="1" max="<?php echo htmlspecialchars($data['qty']); ?>" style="width: 100px;" value="1" required></td>
                            </tr>
                        </table>
                        <button type="submit" name="add-to-cart" value="Tambahkan ke Keranjang" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span> Tambahkan kekeranjang</button>
                    </div>
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

<div class="container" style="margin-right: 195px;">
    <div class="col-md-9 contact_left">
        <form action="komentar_proses.php?id=<?=$id_produk?>" method="post" id="komentar-form">
            <div class="column_3">
                <textarea name="komentar" id="komentar" class="form-control" rows="5" cols="50" placeholder="Masukkan feedback anda tentang produk ini" required autofocus></textarea>
            </div>
            <div class="form-submit1">
                <input type="submit" value="Kirim" class="btn btn-primary">
            </div>
            <div class="clearfix"></div>
        </form>
    </div>
    <div class="col-md-3 contact_right">
        <div class="clearfix"></div>
    </div>
    <div class="col-md-6 box_4">
        <?php
            $komen = mysqli_query($koneksi, "SELECT * FROM komentar  WHERE id_produk = '$id_produk' ORDER BY id_komentar DESC") or die(mysqli_error($koneksi));
            while($k = mysqli_fetch_array($komen)){
                // Display the comments here
            }
        ?>
    </div>
</div>