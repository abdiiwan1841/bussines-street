<?php
ob_start();
if (!defined('BASEPATH'))
    exit('No direct script access allowed'); 
?>	
		<form action="<?php echo base_url(); ?>index.php/bussines/saveBussinesPlan" method="POST">
		<input type="hidden" name="userid" value="<?php echo $global_user_id; ?>">
		<div class="row">
									<div class="col-xs-12 col-sm-6">
										<div class="space-12"></div>

										<!-- #section:pages/profile.info -->
										<div class="profile-user-info profile-user-info-striped">
											<div class="profile-info-row">
												<div class="profile-info-name">Name</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="username"><input name="full_name" id="full_name" readonly="readonly" type="text" value="<?php echo $full_name; ?>" class="form-control crud-edit"/></span>
												</div>
											</div>
											<div class="profile-info-row">
												<div class="profile-info-name">Addres</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="username"><input type="text" value = "<?php echo $addres; ?>" name="addres" id="addres" readonly="readonly" class="form-control crud-edit"/></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Bussines Name</div>

												<div class="profile-info-value">
										
													<span class="editable editable-click" id="country" style="display: inline;"><input type="text" name="bussines_name" id="bussines_name" class="form-control crud-edit"/></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Bussines Role</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="age"><input name="Bussines_role" id="bussines_role" readonly="readonly" type="text" value="Pencari Modal" class="form-control crud-edit"/></span>
												</div>
											</div>
											
											<div class="profile-info-row">
												<div class="profile-info-name">Bussines Location</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="age"><input name="bussines_location" id="bussines_location" type="text" class="form-control crud-edit"/></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Budget Alocation Plan</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup" style="display: inline;"><input type="text" name="budget_alocation" id="budget_alocation" class="form-control crud-edit"/></span>
												</div>
											</div>
											
											<div class="profile-info-row">
												<div class="profile-info-name">Profit Sharing</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup" style="display: inline;">
													
														<select name="profit_sharing" name="profit_sharing" class="form-control crud-edit">
															<option value="">Select Profit Sharing</option>
															<option value="0.00">0%</option>
															<option value="0.05">0,5 %</option>
															<option value="0.10">1%</option>
															<option value="0.15">1,5%</option>
															<option value="0.20">2%</option>
														</select>
			
													</span>
												</div>
											</div>
											<div class="profile-info-row">
												<div class="profile-info-name">Bussines Description</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup" style="display: inline;">
													<textarea name="editor1" id="editor1"></textarea>
													</span>
												</div>
											</div>
											<div class="profile-info-row">
												<div class="profile-info-name">&nbsp;</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup" style="display: inline;">
													<button class="btn btn-white btn-success">
													<i class="ace-icon fa fa-floppy-o" aria-hidden="true"></i>
														Save
													</button>
													</span>
												</div>
											</div>
											</div>
										
										
																			
									</div>
									</div>

		</form>
<script>
	CKEDITOR.replace( 'editor1', {
		filebrowserBrowseUrl: '/ckfinder/ckfinder.html',
		filebrowserImageBrowseUrl: '/ckfinder/ckfinder.html?type=Images',
		filebrowserUploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
		filebrowserImageUploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'
		});	
		
</script>

