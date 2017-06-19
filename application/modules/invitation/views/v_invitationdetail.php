<?php
ob_start();
if (!defined('BASEPATH'))
    exit('No direct script access allowed'); 
?>
<div class="row">
									<div class="col-xs-12 col-sm-3 center">
										<div>
											<!-- #section:pages/profile.picture -->
											<span class="profile-picture">
												<img id="avatar" class="editable img-responsive editable-click editable-empty" alt="Alex's Avatar" width="200" height="300" src="<?php echo base_url(); ?>files/uploads/user_profile/<?php echo $data_invititation_detail["dir_name"]."/".$data_invititation_detail["photo_name"];?>"></img>											
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
										
										<div class="profile-contact-info" style="">
											<div class="profile-contact-links align-left">												
											<button type="button" class="btn btn-white btn-primary" onclick="displayPopupApprove('<?php echo $data_invititation_detail["invitation_id"]; ?>');">
											<i class="ace-icon fa fa-thumbs-up bigger-120 green" ></i>
											Approve Invittation
											</button>
											<button type="button" class="btn btn-white btn-primary" onclick="showLoginWarning();">
											<i class="ace-icon fa fa-envelope bigger-120 green" ></i>
											Send Message
											</button>
											<div class="btn-group">
											<button data-toggle="dropdown" class="btn btn-primary btn-white dropdown-toggle">
												More
												<i class="ace-icon fa fa-angle-down icon-on-right"></i>
											</button>

											<ul class="dropdown-menu">											
												<li>
													<a href="<?php echo base_url()?>index.php/bussines/createContract?bussinesid=<?php echo $data_invititation_detail['bussines_id'] ?>&userid=<?php echo $data_invititation_detail["invite_to"]; ?>&invite_from=<?php echo $_GET['invite_from'];?>">Kirim Surat Perjanjian Kerjasama</a>
												</li>

												<li>
													<a href="#">Another action</a>
												</li>

												<li>
													<a href="#">Something else here</a>
												</li>

												<li class="divider"></li>

												<li>
													<a href="#">Separated link</a>
												</li>
											</ul>
										</div>
												
												
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
									<div class="col-xs-12 col-sm-6" style="">
										<div class="space-12"></div>

										<!-- #section:pages/profile.info -->
										<div class="profile-user-info profile-user-info-striped">
											<div class="profile-info-row">
												<div class="profile-info-name">Bussinesman Name </div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="username"><?php echo $data_invititation_detail["invite_from"]; ?></span>
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
													<span class="editable editable-click" id="age"><?php echo $data_invititation_detail["bussines_role"]; ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name"> Bussines Name </div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="signup" style="display: inline;"><?php echo $data_invititation_detail["bussines_name"]; ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name"> Budget Alocation </div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="login" style="display: inline;"><?php/echo $data_invititation_detail["budget_alocation"]; ?></span>
												</div>
											</div>

											<div class="profile-info-row">
												<div class="profile-info-name">Bussines Description </div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="about" style="display: inline;"><?php //echo $data_invititation_detail["bussines_description"]; ?></span>
												</div>
											</div>
											
											<div class="profile-info-row">
												<div class="profile-info-name">Invittation Status </div>

												<div class="profile-info-value">
													<span class="editable editable-click" id="span-invite-status" style="display: inline;"><?php echo $data_invititation_detail["invittation_status_name"]; ?></span>
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
									
									<div id="modal-approvement" class="modal fade" tabindex="-1">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="row">			
													<div class="col-xs-12">
										<div class="row">
										<div class="col-md-12">
											<h3>This invittation will be Approved! </h3>
										</div>
										</div>
										<div class="row">
										
										<div class="col-xs-12">
										    Invittation ID&nbsp;<input id="invittation_id" name="invittation_id" type="text" class="form-control crud-edit" placeholder=""/>
										</div>
										</div>
										<div class="row" style="margin-top:20px;">
										<div class="col-xs-12">
										<button class="btn btn-danger" data-dismiss="modal">
										<i class="ace-icon fa fa-times"></i>
										Cancel
										</button>
										<button class="btn btn-success" onclick="approveInvittion()" data-dismiss="modal">
										<i class="ace-icon fa fa-paper-plane"></i>
										Approve
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
									function displayPopupApprove(invittation_id){
													
													$("#invittation_id").val(invittation_id);
													$("#modal-approvement").modal("toggle");
									}
									function approveInvittion(){
											var url_approve_invitation ="<?php echo base_url()?>"+"index.php/invitation/approveInvittation";
	
                                            var data_invitation={
												"invittation_id":$("#invittation_id").val()
										    }	
											//alert(invitation_from);										
											$.ajax({
												url		 : url_approve_invitation,
												type	 : "post",
												dataType : "json" ,
												data     : data_invitation,
												success	 : function (response) {
													$("#span-invite-status").text("Approved");
													$("#span-invite-status").css("color","red");
													alert(response.message);
																		
												},
												error    : function(jqXHR, textStatus, errorThrown) {
												console.log(textStatus, errorThrown);
											   }
											});
									}
									</script>