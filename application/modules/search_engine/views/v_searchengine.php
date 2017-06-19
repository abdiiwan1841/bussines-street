<?php 
 if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
?>
									<?php if (!defined( 'BASEPATH')) exit( 'No direct script access allowed');
									/* Manggu Framework * Simple PHP Application Development * Kusnassriyanto S. Bahri * kusnassriyanto@gmail.com * */ 
									?>
									<h1>Bussinesman List</h1><?php echo CI_VERSION;   ?>
									<?php 
										foreach ($data_bussines as $key => $value)
										{																				
									?>
									<div class="row">
									<div class="col-xs-12 col-sm-3 center">
										<div>
											<!-- #section:pages/profile.picture -->
											<span class="profile-picture">
												<img id="avatar" class="editable img-responsive editable-click editable-empty" alt="Alex's Avatar" height=300px width=200px src="<?php echo base_url(); ?>files/uploads/user_profile/<?php echo $value["dir_names"]."/".$value["photo_names"];?>"></img>
											</span>

											<!-- /section:pages/profile.picture -->
											<div class="space-4"></div>

											<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
												<div class="inline position-relative">
													<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
														<i class="ace-icon fa fa-circle light-green"></i>
														&nbsp;
														<span class="white"><?php echo $value["fullname"]; ?></span>
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
										<?php if(isset($_SESSION["session_login"]["username"])==true){?>
										<!-- #section:pages/profile.contact -->
										<div class="profile-contact-info">
											<div class="profile-contact-links align-left">
												<a id="<?php echo $value["bussinesid"] ?>" onclick="showModalInvite(<?php echo $value["bussinesid"] ?>)" class="btn btn-link">
													<i class="ace-icon fa fa-plus-circle bigger-120 green"></i>
													Invite To Bussines
												</a>

												<a href="#modal-table" class="btn btn-link" data-toggle="modal">
													<i class="ace-icon fa fa-envelope bigger-120 pink" ></i>
													Send a message
												</a>

												<a href="#modal-invite"  class="btn btn-link">
													<i class="ace-icon fa fa-ellipsis-h fa-lg"></i>
													other action 1
												</a>
											</div>

											<div class="space-6"></div>
										</div>
										
										<?php }else{ ?>
										
										<div class="profile-contact-info">
											<div class="profile-contact-links align-left">
												<a onclick="showLoginWarning();" class="btn btn-link">
													<i class="ace-icon fa fa-plus-circle bigger-120 green"></i>
													Invite To Bussines
												</a>

												<a onclick="showLoginWarning();"  class="btn btn-link">
													<i class="ace-icon fa fa-envelope bigger-120 pink" ></i>
													Send a message
												</a>

												<a onclick="showLoginWarning();"  class="btn btn-link">
													<i class="ace-icon fa fa-ellipsis-h"></i>
													other action 1
												</a>
											</div>

											<div class="space-6"></div>
										</div>
										<?php } ?>

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
									<div class="col-xs-12 col-sm-6">
										<div class="space-12"></div>

										<!-- #section:pages/profile.info -->
										<div class="profile-user-info profile-user-info-striped">
											<div class="profile-info-row">
												<div class="profile-info-name">Bussinesman Name </div>

												<div class="profile-info-value">
													<span class="" id="username"><?php echo $value["fullname"]; ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name"> Bussines Location </div>

												<div class="profile-info-value">
													<i class="fa fa-map-marker light-orange bigger-110"></i>
													<span class="" id="country" style="display: inline;"><?php echo $value["bussines_location"]; ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Bussines Role </div>

												<div class="profile-info-value">
													<span class="" id="age"><?php echo $value["bussines_role_name"] ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name"> Bussines Name </div>

												<div class="profile-info-value">
													<span class="" id="signup" style="display: inline;"><?php echo $value["bussines_name"] ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name"> Budget Alocation </div>

												<div class="profile-info-value">
													<span class="" id="login" style="display: inline;"><?php echo $value["budget_alocation"] ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Bussines Description </div>

												<div class="profile-info-value">
													<span class="" id="span-bussines-description-<?php echo $value['bussinesid'] ?>" style="display: inline;"><?php echo limitString ($value["bussines_description"],100); ?>...<span style="color:green; cursor:pointer;" onclick="readMore(<?php echo $value['bussinesid'] ?>)">Read More</span></span>
												</div>
											</div>	
											<div class="profile-info-row">
												<div class="profile-info-name">More</div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="about" style="display: inline;"><div class="btn-group">
											<button class="btn btn-info btn-white"><i class="fa fa-ellipsis-h fa-lg"></i></button>

											<button data-toggle="dropdown" class="btn btn-info btn-white dropdown-toggle">
												<span class="ace-icon fa fa-caret-down icon-only"></span>
											</button>										
											<ul class="dropdown-menu dropdown-info dropdown-menu-right">
												<?php if(isset($_SESSION["session_login"]["username"])==true){?>
												<li>
												    <!---diisi perhitungan bagi Hasil -->
													<a href="<?php echo base_url()?>index.php/bussines/calculateProfitSharing?bussinesid=<?php echo $value['bussinesid'] ?>&userid=<?php echo $global_user_id; ?>">Perhitungan Bagi Hasil</a>
												</li>
												<li>
													<a href="<?php echo base_url()?>index.php/bussines/calculateRencanaAngsuran?bussinesid=<?php echo $value['bussinesid'] ?>&userid=<?php echo $global_user_id; ?>">Rencana Angsuran Pinjaman & Bagi Hasil Perbulan</a>
												</li>
												<li>
													<a href="#">More</a>
												</li>
												<?php }else{?>
												
												<li>
												    <!---diisi perhitungan bagi Hasil -->
													<a href="<?php echo base_url()?>index.php/bussines/calculateProfitSharing?bussinesid=<?php echo $value['bussinesid'] ?>">Perhitungan Bagi Hasil</a>
												</li>
												<li>
													<a href="<?php echo base_url()?>index.php/bussines/calculateRencanaAngsuran?bussinesid=<?php echo $value['bussinesid'] ?>">Rencana Angsuran Pinjaman & Bagi Hasil Perbulan</a>
												</li>
												<li>
													<a href="<?php echo base_url()?>index.php/bussines/calculateRencanaAngsuran?bussinesid=<?php echo $value['bussinesid'] ?>">Perjanjian Kerjasama</a>
												</li>
												<li>
													<a href="#">More</a>
												</li>
												<?php } ?>
											</ul>
										</div></span>
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
										}
									?>
									<div id="modal-table" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
									<div class="modal-content">
									<div class="row">
									
									<div class="col-xs-12">
										<div class="row">
										<div class="col-md-12">
											<h5>Messanger</h5>
										</div>
										</div>
										<div class="row">
										<div class="col-xs-12">
											<textarea class="form-control crud-edit" placeholder="Write Message To Alex M.Doe"></textarea>
										</div>
										</div>
										<div class="row">
										<div class="col-xs-12">
										<button class="btn btn-danger" data-dismiss="modal">
										<i class="ace-icon fa fa-times"></i>
										Cancel
										</button>
										<button class="btn btn-success" data-dismiss="modal">
										<i class="ace-icon fa fa-paper-plane"></i>
										Send
										</button>
										</div>
										</div>
									</div>
									</div>
									</div>
									</div>
									</div>
									
									<div id="modal-invite" class="modal fade" tabindex="-1">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="row">			
													<div class="col-xs-12">
										<div class="row">
										<div class="col-md-12">
											<h5>Invitation  </h5>
										</div>
										</div>
										<div class="col-xs-12">
											Invitation from caption&nbsp;<input id="invitation_from_caption" name="invitation_from" type="text" class="form-control crud-edit" value="<?php if(isset($_SESSION["session_login"]["username"])){ echo $_SESSION["session_login"]["username"];} ?>" placeholder=""/>
											<input id="invitation_from" name="invitation_from" type="hidden" class="form-control crud-edit" value="<?php if(isset($_SESSION["session_login"]["userid"])){ echo $_SESSION["session_login"]["userid"];} ?>" placeholder=""/>
										</div>
										<div class="col-xs-12">
											Invitation To<input id="invitation_to_caption" name="invitation_to_caption" type="text" class="form-control crud-edit" placeholder=""/>
											<input id="invitation_to" name="invitation_to" type="hidden" class="form-control crud-edit" placeholder=""/>
										</div>
										<div class="col-xs-12">
											Invitation Subject<input id="invitation_subject" name="invitation_subject" type="text" class="form-control crud-edit" placeholder=""/>
										</div>
										<div class="col-xs-12">
											Bussines ID&nbsp;<input id="bussines_id_invitation" name="bussines_id_invitation" type="text" class="form-control crud-edit" placeholder=""/>
										</div>
										<div class="row">
										<div class="col-xs-12">
										<button class="btn btn-danger" data-dismiss="modal">
										<i class="ace-icon fa fa-times"></i>
										Cancel
										</button>
										<button class="btn btn-success" onclick="sendInvitation()" data-dismiss="modal">
										<i class="ace-icon fa fa-paper-plane"></i>
										Send Invitation
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
									<script>
									function showLoginWarning(){
										//alert("maaf anda perlu login untuk bisa menggunakan menu ini!");
										$("#modal-Login-warning").modal("toggle");
									}
										function showModalInvite(bussines_id){
										var url_get_data_bussines_by_bussines_id ="<?php echo base_url()?>"+"index.php/bussines/getDataBussinesByBussinesId";
										var data_invitation={
												"bussines_id"		:bussines_id
											}
												$.ajax({
												url		 : url_get_data_bussines_by_bussines_id,
												type	 : "post",
												dataType : "json" ,
												data     : data_invitation,
												success	 : function (response) {
													//alert(JSON.stringify(response));
													//alert(response.bussinesid)
														
													$("#modal-invite").modal("toggle");
													$("#bussines_id_invitation").val(response.bussinesid);
													$("#invitation_to_caption").val(response.fullname);
													$("#invitation_to").val(response.userid);
													$("#invitation_subject").val(response.invitation_subject);
												},
												error    : function(jqXHR, textStatus, errorThrown) {
												console.log(textStatus, errorThrown);
											   }
											});
										
										}
										
										function sendInvitation(){
											var busines_id_invitation=$("#bussines_id_invitation").val();
											var invitation_to=$("#invitation_to").val();
											var invitation_from=$("#invitation_from").val();
											//alert(busines_id_invitation+"==="+invitation_to)
											var url_send_invitation ="<?php echo base_url()?>"+"index.php/invitation/sendInvitation";
	
                                            var data_invitation={
												"bussines_id"		:busines_id_invitation,
												"invitation_to"		:invitation_to,
												"invitation_from"	:invitation_from
											}	
											//alert(invitation_from);										
											$.ajax({
												url		 : url_send_invitation,
												type	 : "post",
												dataType : "json" ,
												data     : data_invitation,
												success	 : function (response) {
													alert(response.message);
													//var obj = JSON.parse(data);         	   
													//alert(JSON.parse()response);
												},
												error    : function(jqXHR, textStatus, errorThrown) {
												console.log(textStatus, errorThrown);
											   }
											});
											
										}
										
										function readMore(bussinesid){																	
											var url_get_data_bussines ="<?php echo base_url()?>"+"index.php/bussines/getDataBussinesByBussinesId";
	
                                            var data_bussines={
												"bussines_id"		:bussinesid				
											}	
											//alert(invitation_from);										
											$.ajax({
												url		 : url_get_data_bussines,
												type	 : "post",
												dataType : "json" ,
												data     : data_bussines,
												success	 : function (response) {
													$("#span-bussines-description-"+bussinesid).empty();
													$("#span-bussines-description-"+bussinesid).append(response.bussines_description);
													//var obj = JSON.parse(data);         	   
													//alert(JSON.parse()response);
												},
												error    : function(jqXHR, textStatus, errorThrown) {
												console.log(textStatus, errorThrown);
											   }
											});
											//alert(bussinesid);
										}
									</script>
									