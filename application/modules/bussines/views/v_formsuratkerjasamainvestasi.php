<?php
ob_start();
if (!defined('BASEPATH'))
    exit('No direct script access allowed'); 
?>
<style>
body{
	font-size:11pt;
}
.header-1{
	font-size:15pt;
}
.header-2{
	font-size:10pt;
}
.td-caption-bold{
font-weight:bold;
}
</style>
<div class="row">
									<button type="button" class="btn btn-white btn-success" id="btn-create-bussines-plan">
									<a href="<?php echo base_url().'index.php/search_engine'?>" style="color:green;">
									<i class="ace-icon fa fa-angle-double-left" aria-hidden="true"></i>
										Back
									</a>
									</button>
									<button class="btn btn-white btn-success" id="btn-create-bussines-plan" onclick="showModalLatterBussines()">
									<i class="ace-icon fa fa-paper-plane" aria-hidden="true"></i>
										Kirim Sebagai PDF
									</button>
									<button type="button" class="btn btn-white btn-success" id="btn-create-bussines-plan">
									<a href="<?php echo base_url().'index.php/search_engine'?>" style="color:green;">
									<i class="ace-icon fa fa-print" aria-hidden="true"></i>
										Print
									</button>
									</a>
								</div>
<div class="row" style="margin-top:10px;">	
<table>
  <tr>
    <th colspan="3" class="header-1">SURAT PERJANJIAN KERJASAMA INVESTASI</th>
  </tr>
  <tr>
    <td colspan="3" class="header-2">Yang bertanda tangan di bawah ini :</td>
  </tr>
  <tr>
    <td class="td-caption-bold">Nama</td>
    <td><?php echo $data_bussines_by_userid_and_bussinesid["pihak_pertama"]; ?></td>
    <td></td>
  </tr>
  <tr>
    <td class="td-caption-bold">Jabatan</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td class="td-caption-bold">Alamat</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="3" class="header-2">Disebut pihak Pertama (I)</td>
  </tr>
  <tr>
    <td class="td-caption-bold">Nama</td>
    <td><?php echo $data_pihak_2["fullname"]; ?></td>
    <td></td>
  </tr>
  <tr>
    <td class="td-caption-bold">Jabatan</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td class="td-caption-bold">Alamat</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="3" class="header-2">Disebut pihak Kedua (II)</td>
  </tr>
  <tr>
    <td colspan="3">Pasal 1<br>Pihak kedua memberikan pinjaman dana kepada pihak pertama sebagai bentuk peningkatan skala usaha Ergo Fashion <br/>dalam memenuhi kebutuhan permintaan konsumen (pelanggan).<br>Pasal 2<br>Nilai investasi setelah melalui kesepakatan kedua belah pihak adalah Rp. 15.000.000,00 (lima belas juta rupiah).<br>Pasal 3<br>Pihak II mendapatkan sistem bagi hasil dan dengan rincian sebagai berikut:<br>Pihak pertama memberikan pembagian hasil 10% dari hasil bersih total outlite.Pembagian hasil diberikan tiap bulan selama masa kontrak kerjasama.<br>Pasal 4<br>Pihak I diwajibkan menyerahkan kepada pihak II:Rencana anggaran belanja usaha (RAB).<br>Pasal 5<br>Apabila terjadi kerugian dalam pelaksanaan pengembangan usaha Ergo Fashion maka pihak I diwajibkan menanggung </br>semua biaya kerugian serta diwajibkan menyelesaikan pengembalian dana seperti kesepakatan awal.<br>Pasal 6<br>Pihak I menyanggupi untuk mengembalikan dana pengembangan usaha dalam waktu 6 bulan.<br>Pasal 7<br>Dana tambahan lain diluar RAB yang,telah disepakati biayanya ditanggung sepenuhnya oleh pihak I.<br>Pasal 8<br>Perjanjian kerjasama ini berlaku sejak ditanda tangani dan dapat dibatalkan sewaktu-waktu sesuai kesepakatan kedua belah pihak.<br>Demikian untuk menjadikan maklum semua pihak yang berkepentingan</td>
  </tr>
  <tr>
    <td colspan="3">Jakarta, 10 Maret 2012</td>
  </tr>
  <tr>
    <td class="td-caption-bold">Pihak I<br><br><br>----------------------<br/><?php echo $data_bussines_by_userid_and_bussinesid["pihak_pertama"]; ?></td>
    <td class="td-caption-bold">Pihak II<br><br><br>-----------------<br/><?php echo $data_pihak_2["fullname"]; ?></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3">Saksi</td>
  </tr>
  <tr>
    <td>1.<br>------------------------</td>
    <td>2.<br>------------------------</td>
    <td>3.<br>-----------------------</td>
  </tr>
  <tr>
    <td colspan="3"></td>
  </tr>
</table>
</div>
							<div class="row">
								<div id="modal-latter-bussines" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
									<div class="modal-content">
									<div class="row" style="margin-left:10px;">
									Surat Perjanjian Akan dikirimkan, <br/>Klik Ok untuk mengirim atau cancel Untuk membatalkan.
									</div>
									<div class="row">
									
										<div class="profile-user-info profile-user-info-striped">
											<div class="profile-info-row">
												<div class="profile-info-name">Bussines ID</div>

												<div class="profile-info-value">
													<span class="editable editable-click">
														<input id="bussinesid" type="text" class="col-xs-8">
													</span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name"> Bussines Name </div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="country" style="display: inline;">
														<input id="bussinesid" type="text" class="col-xs-8">
													</span>
												</div>
											</div>
										</div>
								
									</div>
									<div class="row">
										<div class="col-xs-12">
										<button class="btn btn-danger" data-dismiss="modal">
										<i class="ace-icon fa fa-times"></i>
										Cancel
										</button>
										<button class="btn btn-success">
										<i class="ace-icon fa fa-floppy-o"></i>
										Save
										</button>
										</div>
									</div>
									</div>									
									</div>
								</div>
							</div>
							<script>
							function showModalLatterBussines(bussinesid){
									$("#modal-latter-bussines").modal("toggle");	
									}
							</script>
								