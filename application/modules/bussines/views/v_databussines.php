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
							<script src="<?php echo base_url()?>themes/aceadmin/js/jquery.min.js"></script>
							<div class="row">	
								<div class="col-md-12">
									<table id="sample-table-1" class="table table-striped table-bordered table-hover">
										<thead>
											<tr>												
												<th>Bussines Name</th>
												<th>location</th>
												<th class="hidden-480">Budget</th>

												<th>
													Profit Sharing
												</th>
												<th class="hidden-480">Status</th>

												<th></th>
											</tr>
										</thead>

										<tbody>
										    <?php
											   $classx="tr-ganjil";
												foreach ($data_bussines_by_userid as $key => $value){
													
												$i=0;
												if($i%2 ==1){$classx = "tr-ganjil";}
											?>
											
											<tr class="<?php echo $classx; ?>">
												<td>
													<?php echo $value['bussines_name']; ?>
												</td>
												<td><?php echo $value['bussines_location']; ?></td>
												<td class="hidden-480"><?php echo $value['budget_alocation']; ?></td>
												<td><?php echo $value['profit_sharing']; ?>%</td>

												<td class="hidden-480">
													<span class="label label-sm label-warning">Expiring</span>
												</td>

												<td>
													<div class="hidden-sm hidden-xs btn-group">
														<button class="btn btn-xs btn-success">
															<i class="ace-icon fa fa-search-plus bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-info">
															<i class="ace-icon fa fa-pencil bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-danger">
															<i class="ace-icon fa fa-trash-o bigger-120"></i>
														</button>

								
										
										<div class="btn-group" style="margin-left:1px;">
											<button data-toggle="dropdown" class="btn btn-inverse btn-xs dropdown-toggle">
												More
												<span class="ace-icon fa fa-caret-down icon-on-right"></span>
											</button>

											<ul class="dropdown-menu dropdown-inverse">
												<li>
													<a href="#" onclick="showModalUpload(<?php echo $value['bussinesid'] ?>)">Upload Photo</a>
												</li>
												<li>
													<a href="#">Upload Video</a>
												</li>

												<li class="divider"></li>

												<li>
													<a href="#">Separated link</a>
												</li>
											</ul>
										</div>
													</div>

													<div class="hidden-md hidden-lg">
														<div class="inline position-relative">
															<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
																<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
															</button>

															<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																<li>
																	<a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
																		<span class="blue">
																			<i class="ace-icon fa fa-search-plus bigger-120"></i>
																		</span>
																	</a>
																</li>

																<li>
																	<a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
																		<span class="green">
																			<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																		</span>
																	</a>
																</li>

																<li>
																	<a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
																		<span class="red">
																			<i class="ace-icon fa fa-trash-o bigger-120"></i>
																		</span>
																	</a>
																</li>
															</ul>
														</div>
													</div>
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

								<div class="row">
								<div class="col-xs-6">
								<div class="dataTables_info" id="sample-table-2_info">
								Showing 1 to 10 of 23 entries
								</div>
								</div>
								<div class="col-xs-6">
								<div class="dataTables_paginate paging_bootstrap">
								<ul class="pagination">
								<li class="prev disabled">
								<a href="#">
								<i class="fa fa-angle-double-left"></i>
								</a>
								</li>
								<li class="prev disabled">
								<a href="#"><i class="fa fa-angle-left"></i></a>
								</li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li><li><a href="#">3</a>
								</li>
								<li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
								<li class="next">
								<a href="#"><i class="fa fa-angle-double-right"></i></a>
								</li>
								</ul>
								</div>
								</div>
								</div>
								
								<div class="row">
								<button type="button" class="btn btn-white btn-success" id="btn-create-bussines-plan">
								<i class="fa fa-plus" aria-hidden="true"></i>
									Create Bussines Plan
								</button>
								</div>
								
								<div id="modal-upload" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
									<div class="modal-content">
									<div class="row">
									<div class="widget-main">
									<form name="form-upload" method="POST" enctype="multipart/form-data" action="<?php echo base_url() ?>index.php/bussines/do_upload">
													<div class="form-group">
														<div class="col-xs-10">
															<label class="ace-file-input ace-file-multiple">
															<input multiple="" type="file" name="userfile" id="userfile">
															<input  type="text" name="bussines_id_photo" id="bussines_id_photo">
															<input  type="text" name="userid_photo" id="userid_photo">
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
								
								<script src="<?php echo base_url()?>themes/aceadmin/js/ace-elements.min.js"></script>
								<script src="<?php echo base_url()?>themes/aceadmin/js/ace-elements.min.js"></script>
								<script src="<?php echo base_url()?>themes/aceadmin/js/ace.min.js"></script>
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
									//console.log($(this).data('ace_input_files'));
									//console.log($(this).data('ace_input_method'));
								});

								</script>
								
								<script src="<?php echo base_url()?>themes/aceadmin/js/jquery.min.js"></script>
								
								<script src="<?php echo base_url()?>themes/aceadmin/js/date-time/bootstrap-datepicker.min.js"></script>
								
								<script src="<?php echo base_url()?>themes/aceadmin/js/autosize.min.js"></script>
								
								<script src="<?php echo base_url()?>themes/aceadmin/js/jquery.inputlimiter.1.3.1.min.js"></script>
								<script src="<?php echo base_url()?>themes/aceadmin/js/jquery.maskedinput.min.js"></script>
								
								
								<script type="text/javascript">
							
								
								$( "#btn-create-bussines-plan" ).click(function(e) {
										//alert( "Handler for .click() called." );
										location.href = "<?php echo base_url(); ?>"+"index.php/bussines/showBussinesPlanForm";
										//e.preventDefault();
								});
								
								function showModalUpload(bussinesid){
									//alert(bussinesid)
									$("#bussines_id_photo").val(bussinesid);
									$("#userid_photo").val($("#global_user_id").val());
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
							
							
							
						