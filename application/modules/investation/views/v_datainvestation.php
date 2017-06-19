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

														<button class="btn btn-xs btn-warning">
															<i class="ace-icon fa fa-flag bigger-120"></i>
														</button>
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
									Create Investation Plan
								</button>
								</div>
								<script src="<?php echo base_url()?>themes/aceadmin/js/jquery.min.js"></script>
								<script>
								//$("#btn-create-bussines-plan").click(function(){
									//alert(1);
									//location.href = "<?php echo base_url(); ?>"+"index.php/bussines/showBussinesPlanForm";
								//});
								
								$("#btn-create-bussines-plan" ).click(function(e) {
										//alert( "Handler for .click() called." );
										location.href = "<?php echo base_url(); ?>"+"index.php/investation/showInvestationPlanForm";
										//e.preventDefault();
								});
								</script>

