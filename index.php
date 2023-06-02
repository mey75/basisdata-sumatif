<html>
<head>
<title>TUGAS BASIS KELOMPOK 7</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
<h1>Tabel PENJUALAN KOMPUTER</h1>
<table class="data-table">
<caption class="title">Data Penjualan Tas</caption>
<thead>
<tr>
<th>Tanggal pembelian</th>
<th>Tanda terima</th>
<th>merk komputer</th>
<th>harga</th>
<th>Via pembayaran</th>
<th>nama kasir</th>
</tr>
</thead>
<tbody>
<?php
include('koneksi.php');
while ($row = mysqli_fetch_array($query))
{
echo '<tr>
<td>'.$row['tgl_pembelian'].'</td>
<td>'.$row['kode_tanda_terima'].'</td>
<td>'.$row['merk_komputer'].'</td>
<td>'.$row['harga'].'</td>
<td>'.$row['via_pembayaran'].'</td>
<td>'.$row['nama_kasir'].'</td>
</tr>';
}?>
</tbody>

</table>
</body>
</html>