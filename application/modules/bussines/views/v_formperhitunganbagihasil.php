<?php
ob_start();
if (!defined('BASEPATH'))
    exit('No direct script access allowed'); 
?>									<div class="row">
									<div class="col-xs-12 col-sm-6">
										<div class="space-12"></div>

										<!-- #section:pages/profile.info -->
										<div class="profile-user-info profile-user-info-striped">
											<div class="profile-info-row">
												<div class="profile-info-name">Bussines Name</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="username"><?php echo $data_profit_sharing["bussines_name"] ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name"> Bussines Location </div>

												<div class="profile-info-value">
													<i class="fa fa-map-marker light-orange bigger-110"></i>
													<span class="editable editable-click" id="country" style="display: inline;"><?php echo $data_profit_sharing["bussines_location"] ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Bussines Budget</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="age">Rp.<?php echo $data_profit_sharing["budget_alocation"] ?></span>
												</div>
											</div>
											
											<div class="profile-info-row">
												<div class="profile-info-name">Kurun Waktu Kerjasama</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="age">1 Tahun (12 Kali Angsuran Pembayaran Angsuran Pokok Dan Bagi Hasil Keuntungan)</span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Profit Sharing</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup" style="display: inline;"><?php echo round($data_profit_sharing["profit_sharing_in_percent"],2) ?>%</span>
												</div>
											</div>
											<div class="profile-info-row">
												<div class="profile-info-name">Angsuran Pokok Perbulan</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup" style="display: inline;"><?php echo round($data_profit_sharing["angsuran_pokok"],2) ?></span>
												</div>
											</div>
											<div class="profile-info-row">
												<div class="profile-info-name">Keuntungan Perbulan</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="about" style="display: inline;">Rp.<?php echo $data_profit_sharing["profit_per_month"]; ?></span>
												</div>
											</div>	
											<div class="profile-info-row">
												<div class="profile-info-name">Total Keuntungan Selama Kerjasama</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="about" style="display: inline;">Rp.<?php echo $data_profit_sharing["total_profit"]; ?></span>
												</div>
											</div>	
										</div>
																			
									</div>
									</div>
									<div class="row" style="padding-left:80px; margin-top:100px;">
									<button type="button" class="btn btn-white btn-success" id="btn-create-bussines-plan">
									<a href="<?php echo base_url().'index.php/search_engine'?>" style="color:green;">
									<i class="ace-icon fa fa-angle-double-left" aria-hidden="true"></i>
										Back
									</button>
									</div>
