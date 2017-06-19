<?php
ob_start();
if (!defined('BASEPATH'))
    exit('No direct script access allowed'); 
?>	
<h1>Profile</h1>		
<div class="row">
									<div class="col-xs-12 col-sm-3 center">
										<div>
											<!-- #section:pages/profile.picture -->
											<span class="profile-picture">
												<img id="avatar" class="editable img-responsive editable-click editable-empty" alt="Alex's Avatar" src="<?php echo base_url(); ?>files/uploads/user_profile/<?php echo $dir_name.'/'.$foto_profile; ?>"></img>
											</span>

											<!-- /section:pages/profile.picture -->
											<div class="space-4"></div>

											<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
												<div class="inline position-relative">
													<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
														<i class="ace-icon fa fa-circle light-green"></i>
														&nbsp;
														<span class="white"><?php  ?></span>
													</a>

													<ul class="align-left dropdown-menu dropdown-caret dropdown-lighter">
														<li class="dropdown-header"> Change Status </li>

														<li>
															<a href="#">
																<i class="ace-icon fa fa-circle green"></i>
																	&nbsp;
																<span class="green">Available</span>
															</a>
														</li>

														<li>
															<a href="#">
																<i class="ace-icon fa fa-circle red"></i>
																	&nbsp;
																<span class="red">Busy</span>
															</a>
														</li>

														<li>
															<a href="#">
																<i class="ace-icon fa fa-circle grey"></i>
																	&nbsp;
																<span class="grey">Invisible</span>
															</a>
														</li>
													</ul>
												</div>
											</div>
										</div>

										<div class="space-6"></div>
										<?php// if(isset($_SESSION["session_login"]["username"])==true){?>
										<!-- #section:pages/profile.contact -->
										<?php// }else{ ?>
										
										<div class="profile-contact-info">
											<div class="profile-contact-links align-left">
												<a onclick="showModalUpload();" class="btn btn-link">
													<i class="ace-icon fa fa-camera bigger-120 green"></i>
													Change Photo
												</a>

												<a onclick="showModalProfile();"  class="btn btn-link">
													<i class="ace-icon fa fa-edit bigger-120 pink" ></i>
													Edit Profile
												</a>

												
											</div>

											<div class="space-6"></div>
										</div>
										<?php// } ?>

										<!-- /section:pages/profile.contact -->
										<div class="hr hr12 dotted"></div>

										<!-- #section:custom/extra.grid -->
										<div class="clearfix">
											<div class="grid2">
												<span class="bigger-175 blue">25</span>

												<br>
												Joined Team
											</div>

											<div class="grid2">
												<span class="bigger-175 blue">12</span>

												<br>
												Rating
											</div>
										</div>

										<!-- /section:custom/extra.grid -->
										<div class="hr hr16 dotted"></div>
									</div>
									
									<div class="col-xs-12 col-sm-6" style="margin-top:50px">
										<div class="space-12"></div>

										<!-- #section:pages/profile.info -->
										<div class="profile-user-info profile-user-info-striped">
											<div class="profile-info-row">
												<div class="profile-info-name">Bussinesman Name </div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="username"><?php echo $data_profile["fullname"]; ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name"> Bussines Location </div>

												<div class="profile-info-value">
													<i class="fa fa-map-marker light-orange bigger-110"></i>
													<span class="editable editable-click" id="country" style="display: inline;"><?php// echo $value["bussines_location"]; ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Bussines Role </div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="age"><?php echo $data_profile["bussines_role_name"]; ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name"> Bussines Name </div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup" style="display: inline;"><?php echo $data_profile["bussines_name"]; ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name"> Budget Alocation </div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="login" style="display: inline;"><?php/echo $data_profile["budget_alocation"]; ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Bussines Description </div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="about" style="display: inline;"><?php echo $data_profile["bussines_description"]; ?></span>
												</div>
											</div>
										</div>
																			
									</div>
									<div class="col-xs-12 col-sm-3">
										Right Content
									</div>	
									</div>
									<div class="row">
									<hr class="col-xs-12 col-sm-6" style="border-bottom:1px dashed green;"/>
									</div>
									<?php 
									//	}
									?>
									<div id="modal-upload" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
									<div class="modal-content">
									<div class="row">
									<div class="widget-main">
									<form name="form-upload" method="POST" enctype="multipart/form-data" action="<?php echo base_url() ?>index.php/profile/do_upload">
													<div class="form-group">
														<div class="col-xs-10">
															<label class="ace-file-input ace-file-multiple">
															<input multiple="" type="file" name="userfile" id="userfile">
															<input  type="text" name="userid_photo" id="userid_photo" value="<?php echo $userid; ?>">
															<a class="remove" href="#">
															<i class=" ace-icon fa fa-times"></i>
															</a>
															</label>

															<!-- /section:custom/file-input -->
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
									</form>
									</div>
									</div>
									<script src="<?php echo $assetdir; ?>js/jquery.min.js"></script>
									<script src="<?php echo $assetdir; ?>js/ace-elements.min.js"></script>
									<script src="<?php echo $assetdir; ?>js/ace.min.js"></script>
										<script>
										$('#userfile').ace_file_input({
										style:'well',
										btn_choose:'Drop files here or click to choose',
										btn_change:null,
										no_icon:'ace-icon fa fa-cloud-upload',
										droppable:true,
										thumbnail:'small'//large | fit
											,
										preview_error : function(filename, error_code) {
										alert(error_code);
										}
			
										}).on('change', function(){
										console.log($(this).data('ace_input_method'));
										});
										</script>
									
									<div id="modal-profile" class="modal fade" tabindex="-1">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="row">			
													<div class="col-xs-12">
										<div class="row">
										<div class="col-xs-10" style="margin-left:40px;">
										<h5>Edit Profile</h5>
										</div>
										</div>
										<div class="col-xs-10">
										<div class="space-12"></div>

										<!-- #section:pages/profile.info -->
										<div class="profile-user-info profile-user-info-striped">
											<div class="profile-info-row">
												<div class="profile-info-name">Nama Lengkap</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="username"><input name="full_name" id="full_name" type="text" class="form-control"/></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Email</div>

												<div class="profile-info-value">
													<i class="fa fa-map-marker light-orange bigger-110"></i>
													<span class="editable editable-click" id="country" style="display: inline;"><input type="text" id="email" name="email" class="form-control"/></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Password</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="age"><input type="password" class="form-control" name="passsword" id="password"/></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Ulangi Password</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup" style="display: inline;"><input type="password" name="re_password" id="re_password" class="form-control"/></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Gender</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="login" style="display: inline;"><input type="text" name="gender_id" id="gender_id" class="form-control"/></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Birth City</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="about" style="display: inline;"><input type="text" name="birth_city" id="birth_city" class="form-control crud-param"/></span>
												</div>
											</div>
											
											<div class="profile-info-row">
												<div class="profile-info-name">Birth Date</div>
												<div class="profile-info-value">
													<span class="editable editable-click" id="about" style="display: inline;"><div class="input-group">
																<input class="form-control date-picker" name="birth_date" id="birth_date" type="text" data-date-format="dd-mm-yyyy">
																<span class="input-group-addon">
																	<i class="fa fa-calendar bigger-110"></i>
																</span>
												    </div>
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
										<button class="btn btn-success" onclick="sendInvitation()">
										<i class="ace-icon fa fa-floppy-o"></i>
										Save
										</button>
										</div>
										</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div id="modal-Login-warning" class="modal fade" tabindex="-1">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="row">			
													<div class="col-xs-12">
										<div class="row">
										<div class="col-md-12">
											<h5>Warning  </h5>
										</div>
										</div>
											anda harus login untuk menggunakan menu ini
										<div class="row">
										<div class="col-xs-12">
										<button class="btn btn-danger" data-dismiss="modal">
										<i class="ace-icon fa fa-times"></i>
										Belum punya akun
										</button>
										<button class="btn btn-success" data-dismiss="modal" onclick="sendInvitation()">
										<i class="ace-icon fa fa-times"></i>
										Login
										</button>
										</div>
										</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<script src="<?php echo $assetdir; ?>js/jquery.min.js"></script>
									<script src="<?php echo $assetdir; ?>js/date-time/bootstrap-datepicker.min.js"></script>
									
									<script src="<?php echo $assetdir; ?>js/autosize.min.js"></script>
									<script src="<?php echo $assetdir; ?>js/jquery.inputlimiter.1.3.1.min.js"></script>
									<script src="<?php echo $assetdir; ?>js/jquery.maskedinput.min.js"></script>
									
									<script>
									function showModalUpload(){
									$("#modal-upload").modal("toggle");	
									}
									
									function showModalProfile(){
									$("#modal-profile").modal("toggle");	
									}
									
									//datepicker plugin
									//link
									$('.date-picker').datepicker({
									autoclose: true,
									todayHighlight: true
									})
									//show datepicker when clicking on the icon
										.next().on(ace.click_event, function(){
										$(this).prev().focus();
									});
			
									
			
			
			

				
				

									</script>