<?php
ob_start();
if (!defined('BASEPATH'))
    exit('No direct script access allowed'); 
?>
<style>
.tr-ganjil{
	background-color:#ccffcc;
}
.tr-genap{
	background-color:white;
}
.tr-head{
	background-color:black;
}
</style>
							<div class="row">	
								<div class="col-md-12">
									<table id="sample-table-1" class="table table-striped table-bordered table-hover">
										<thead >
											<tr>												
												<th>Periode Bulan</th>
												<th>Angsuran Pokok</th>
												<th class="hidden-480">Profit Sharing</th>
												<th class="hidden-480">
													Total Angsuran
												</th>

												<th></th>
											</tr>
										</thead>

										<tbody>
										    <?php
											$classx="tr-ganjil";
												foreach ($data_months as $key => $value){
													$i=0;
											
											if($i%2 ==1){$classx = "tr-ganjil";}
											?>
											
											<tr class="<?php echo $classx; ?>">
												<td>
												<?php echo $value; ?>
												</td>
												<td>Rp.<?php echo $data_profit_sharing['angsuran_pokok']; ?></td>
												<td class="hidden-480">Rp.<?php echo $data_profit_sharing['profit_per_month']; ?></td>
												<td>Rp.<?php echo $data_profit_sharing['total_angsuran']; ?></td>

												<td class="hidden-480">
													
												</td>

												
											</tr>
											
											<?php	
												$i++;											
											}
											?>
											
										</tbody>
									</table>
								</div>
							</div>
							<div class="row" style="margin-bottom:100px;">
							<span>
							Catatan:<br/>Angsuran Pokok Akan dibayar tiap bulannya dan akan dikenakan denda jika terjadi keterlambatan.<br/>
							Angsuran Bagi hasil usaha bisa Dinegosiasikan jika keadaan usaha sedang kurang baik
							</span>
							</div>
								
								<div class="row">
									<button type="button" class="btn btn-white btn-success" id="btn-create-bussines-plan">
									<a href="<?php echo base_url().'index.php/search_engine'?>" style="color:green;">
									<i class="ace-icon fa fa-angle-double-left" aria-hidden="true"></i>
										Back
									</button>
									<button type="button" class="btn btn-white btn-success" id="btn-create-bussines-plan">
									<a href="<?php echo base_url().'index.php/search_engine'?>" style="color:green;">
									<i class="ace-icon fa fa-print" aria-hidden="true"></i>
										Print
									</button>
								</div>