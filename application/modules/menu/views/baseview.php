<?php 
 if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
 ?>
<?php
if (!isset($namespace)) {
    $namespace = '';
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title><?php echo $appconfig['app-title']; ?></title>
        <link rel="icon" href="<?= base_url() ?>/icon.png" type="image/png">

        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <?php include_once 'aceadmin' . '/theme_top.php' ?>

        <script src="<?php echo $libsurl; ?>kslibs/js/kslibs.js"></script>

        <link rel="stylesheet" type="text/css" href="<?php echo $basedir; ?>libs/bsmodal/css/bootstrap-modal-bs3patch.css">
        <link rel="stylesheet" type="text/css" href="<?php echo $basedir; ?>libs/bsmodal/css/bootstrap-modal.css">
        <!---->
        <script>
            var OnReadyArray = [];
            var OnResizeArray = [];
            var DisplayMode = 'normal';
            var DefaultBaseSearch = '#page-content ';
            var BaseSearch = DefaultBaseSearch;
            var AfterLoadGrid = [];

        </script>

        <?php include_once 'basev_style.php' ?>

        <style>
            .username-filler{
                height:12px; 
                width:10px;
            }
            .my-dropdown{
                left:-100px!important;
            }
            .my-dropdown.dropdown-caret:before {
                left:120px;
            }
            .my-dropdown.dropdown-caret:after {
                left:120px;
            }
            .no-skin .sidebar{
                border-style:solid;
                border-width:0 1px 0 0;
            }
			.menu-text{}
        </style>        
    </head>

    <body class="no-skin">
		
		<div id="navbar" class="navbar navbar-default" style="background-color:green;">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container" style="background-color:green;">
				<!--three line menu-->
			
                <button type="button" class="navbar-toggle menu-toggler pull-left btn-grey" id="menu-toggler"  data-toggle="collapse" data-target=".sidebar">
                    <span class="sr-only">Toggle sidebar</span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>
                </button>
				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
				<span style="color:red; opacity:0.1;">Lahadz Bismillah here..</span>
					<!-- #section:basics/navbar.layout.brand -->
					<a href="#" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							Bussines Street 
						</small>
					</a>
					
					<!-- /section:basics/navbar.layout.brand -->

					<!-- #section:basics/navbar.toggle -->

					<!-- /section:basics/navbar.toggle -->
				</div>

				<!-- #section:basics/navbar.dropdown -->
				<div class="navbar-buttons navbar-header pull-right" role="navigation" style="background-color:green;">
					<ul class="nav ace-nav">
					<?php if(isset($_SESSION["session_login"]["username"])==true){  ?>
					
					<li class="green">
							<a data-toggle="dropdown" id="btn-notif-more" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-ellipsis-h"></i>
								<span class="badge badge-grey" style="background-color:red;" id="notif_invitation_more"></span>
							</a>
						<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-exclamation-triangle"></i>
									8 Notifications
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
												New Comments
											</span>
											<span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<i class="btn btn-xs btn-primary fa fa-user"></i>
										Bob just signed up as an editor ...
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
												New Orders
											</span>
											<span class="pull-right badge badge-success">+8</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
												Followers
											</span>
											<span class="pull-right badge badge-info">+11</span>
										</div>
									</a>
								</li>

								<li class="dropdown-footer">
									<a href="#">
										See all notifications
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
					</li>
					<li class="green">
							<a data-toggle="dropdown" id="btn-notif-message" class="dropdown-toggle" href="#">
							
								<i class="ace-icon fa fa-comment"></i>
								<span class="badge badge-grey" style="background-color:red;" id="notif_invitation_message"></span>
							</a>
						<ul id="dropdown-notif-message" class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">																
						</ul>
					</li>
					<li class="green">
							<a data-toggle="dropdown" id="btn-notif-invittation" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-user-plus"></i>
								<span class="badge badge-grey" style="background-color:red;" id="notif_invitation"></span>
							</a>
						<ul id="dropdown-notif-invite" class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">																
						</ul>
					</li>
					
						<?php } ?>
                        <li class="green">
						<?php if(isset($_SESSION["session_login"]["username"])){ ?>
                            <a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="<?php echo base_url(); ?>files/uploads/user_profile/<?php echo $dir_name.'/'.$foto_profile; ?>" alt="Jason's Photo">
								<span class="user-info">
									<small>Welcome,</small>
									<?php 
									if(isset($_SESSION["session_login"]["username"])==true){ echo $_SESSION["session_login"]["username"];}
									?>	
                                </span>

                                <i class="fa fa-caret-down" style="margin-top:0px"></i>
                            </a>
						<?php }else{	 ?>	
						
						
						<a data-toggle="dropdown" href="#" class="dropdown-toggle">
							    <span></span>&nbsp;
                                <i class="fa fa-user" style="font-size: 30px; margin-top: 5px">&nbsp;</i>
                                <span class="user-info">
                                </span>

                                <i class="fa fa-caret-down" style="margin-top:0px"></i>
                        </a>
						
						<?php } ?>
                            <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close my-dropdown">
                                <li  style="text-align: center; line-height: 25px;"><span><strong><?php //echo $username ?></strong></span></li>
                                <hr style="margin: 4px;">
								<?php if(isset($_SESSION["session_login"]["username"])==true){ ?>
								<li>
                                    <a href="<?php echo base_url(); ?>/index.php/profile/showProfile?userid=<?php echo $global_user_id ?>">
                                        <i class="fa fa-users"></i>
                                        Profile
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="baseactionbutton" data-params='{"username":"<?php //echo $username ?>"}'>
                                        <i class="fa fa-lock"></i>
                                        Change Password
                                    </a>
                                </li>

                                <li>
                                    <a href="<?php echo $basedir . index_page(); ?>/login/logout?return_keyword_to=<?php if(isset($_GET["textsearch"])){ echo $_GET["textsearch"];} ?>&return_page_to=<?php echo $page; ?>">
                                        <i class="fa fa-power-off"></i>
                                        Logout
                                    </a>
                                </li>
								<?php } ?>
								<?php if(isset($_SESSION["session_login"]["username"])==false){ ?>
								<li>
                                    <a href="<?php echo $basedir . index_page(); ?>/register">
                                        <i class="fa fa-user-plus"></i>
                                        Sign Up 
										
                                    </a>
                                </li>
								
                                <li>
                                    <a href="<?php echo $basedir . index_page(); ?>/login?return_keyword_to=<?php if(isset($_GET["textsearch"])){ echo $_GET["textsearch"];} ?>&return_page_to=<?php echo $page; ?>">
                                        <i class="fa fa-sign-in"></i>
                                        Login 
                                    </a>
                                </li>
								<?php  
								} 
								?>
								
								
                            </ul>
                        </li>                        

                    </ul>
					
				</div>

				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>
		
		
        <div class="main-container" id="main-container">
            <script type="text/javascript">
                try {
                    ace.settings.check('main-container', 'fixed')
                } catch (e) {
                }
            </script>
             
            <div class="main-container-inner">
                <div class="sidebar responsive <?php //echo getArrayDef($menuoptions, 'sidebar_class'); ?>" id="sidebar">
                    <div style="background-image: url('<?= base_url() ?>themes/aceadmin/images/bg belgia-12.png');background-repeat:repeat -x; background-size: 200px 800px">
					<ul class="nav nav-list" style="top: 0px;">
					<li class="">
						<a href="<?php echo base_url(); ?>index.php/search_engine">
							<i class="fa fa-home fa-2x"></i>
							<span class="menu-text"> Halaman Utama </span>
						</a>

						<b class="arrow"></b>
					</li>
					<li class="hsub">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text">My Bussines Street</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a style="color:green;" href="<?php echo base_url()?>index.php/bussines/displayDataBussinesByUserId?userid=<?php if(isset($_SESSION['session_login']['userid'])){echo $_SESSION['session_login']['userid'];} ?>">
									<i class="menu-icon fa fa-caret-right"></i>
									Bussines Plan
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a style="color:green;" href="<?php echo base_url()?>index.php/investation/displayDataInvestationByUserId?userid=<?php if(isset($_SESSION['session_login']['userid'])){echo $_SESSION['session_login']['userid'];} ?>">
									<i class="menu-icon fa fa-caret-right"></i>
									Investation Plan
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>
					
					<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					    <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				    </div>
				</ul>
                        <script type="text/javascript">
                            try {
                                ace.settings.check('sidebar', 'fixed')
                            } catch (e) {
                            }
                        </script>
                        <?php echo $shortcuts; ?>

                        <?php echo $mainmenu; ?>
                        <img src="<?= base_url() ?>themes/aceadmin/images/hide.png" style="z-index: 0; height: 560px;width: 200px">

                        <div class="sidebar-collapse" id="sidebar-collapse">
                            <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
                        </div>

                        <script type="text/javascript">
                            try {
                                ace.settings.check('sidebar', 'collapsed')
                            } catch (e) {
                            }
                        </script>
                        <style>
                            a{
                                color: white;
                            }
                        </style>
						
                    </div>
					
                </div>
              
                <div class="main-content">
                    
                   <div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
					</script>

					<ul class="breadcrumb">
						<li id="search-engine">
							<a href="<?php echo base_url(); ?>index.php/search_engine">All Bussines Role</a>
						</li>
						<li id="investor">
							<a href="#">Investor</a>
						</li>

						<li id="bussinesman">
							<a href="#">Businesman</a>
						</li>
						<li id="other">
							<a href="#">Other</a>
						</li>
					</ul><!-- /.breadcrumb -->
					<?php  //if ($page!= "Search Engine") { ?>
					
					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off">
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					<?php //} ?>

					</div>
					<?php if($page != "Search Engine" ) { ?>
					<div class="page-header" style="margin-left:5px;">
						<h1>
							<?php echo $page; ?>
						</h1>
					</div>
					<?php } ?>
					<!--space untuk varuabel variabel global yang dibutuhkan sistem --->
					<?php 
						if(isset($_SESSION["session_login"]["username"])==true){
						?>
							<div style="margin-left:15px; display:none;">Global User ID<input type="text" id="global_user_id" name="global_user_id" value="<?php echo $global_user_id; ?>"/></div>
						<?php
						}
						?>		
                    <div class="page-content" id="page-content">
                        <div class="row">
                            <div class="col-xs-12">
                                
                                <!-- PAGE CONTENT BEGINS -->
									<?php echo $pagecontent ?>
									
                                <!-- PAGE CONTENT ENDS -->
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                </div><!-- /.main-content -->


            </div><!-- /.main-container-inner -->

            <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                <i class="icon-double-angle-up icon-only bigger-110"></i>
            </a>
				
        </div><!-- /.main-container -->
		

        <div id="ajax-modalwide" class="modal container fade" tabindex="-1" style="display: none; width:80%" data-dataname="testing"></div>
        <div id="ajax-modalnormal" class="modal container fade" tabindex="-1" style="display: none; " data-width="700">
        <div class="modal-body" id="ajax-modalnormal-body"></div></div>
        <div id="ajax-modalwider" class="modal container fade" tabindex="-1" style="display: none; padding-left: 20px; padding-right: 20px" data-width="700"></div>
		<?php include_once 'aceadmin' . '/theme_bottom.php' ?>

        <script type="text/javascript" src="<?php echo $basedir; ?>libs/bsmodal/js/bootstrap-modal.js"></script>
        <script type="text/javascript" src="<?php echo $basedir; ?>libs/bsmodal/js/bootstrap-modalmanager.js"></script>

        <script src="<?php echo $libsurl; ?>kslibs/js/mgcrud.js"></script>
        <script src="<?php echo $libsurl; ?>jqvalidation/jquery.validate.js"></script>


        <script>
		var pageid="<?php echo $pageid;?>";
		//alert(pageid);
		//alert("<?php echo $pageid;?>");
		$("#"+pageid).css("border-bottom","2.5px solid green");
                        OnReadyArray.push(function () {
                            $('.baseactionbutton').click(function () {
                                //alert('test');
                                console.log(this);
                                actionName = $(this).attr('data-action');
                                modalWidth = $(this).attr('data-modalwidth');
                                //console.log("*data*");
                                //console.log($(this).data('params'));

                                modalname = '<?php echo $namespace; ?>ajax-modalnormal';
                                console.log("actionName: " + actionName);
                                //data_idx = $(this).closest('tr').attr('data-index');
                                data = $(this).data('params');
                                console.log("*data*");
                                console.log(data);
                                Manggu.Crud.showModal({
                                    width: modalWidth,
                                    type: 'POST',
                                    url: '<?php echo site_url() . '/crud/command/users/changepassword' ?>',
                                    data: data,
                                    modalname: modalname
                                });

                                $('#' + modalname).on('hidden.bs.modal', function () {
                                    if ($('#' + modalname).attr('data-modalresult') == 1) {
                                        //alert('modal result 1')
//                            Manggu.Crud.loadData({'paramclass': 'crud-param',
//                                'url': '<?php //echo $basedir . 'crud/svqueryview/' . $crudname . '/' . $actionname;  ?>'
//                            });
                                    }
                                });

                                return false;
                            })
                        });

                        OnReadyArray.push(function () {

                            Manggu.showAlert = function (message, title, style) {
                                //alert("xxx-"+message);
                                var vtitle, vstyle;
                                if (typeof title == 'undefined') {
                                    vtitle = 'Error';
                                }
                                if (typeof style == 'undefined') {
                                    vstyle = 'error';
                                }
                                if (style == 'error') {
                                    vstyle = 'gritter-error';
                                } else if (style == 'warning') {
                                    vstyle = 'gritter-warning';
                                } else if (style == 'success') {
                                    vstyle = 'gritter-success';
                                } else if (style == 'info') {
                                    vstyle = 'gritter-info';
                                } else if (style == 'error-center') {
                                    vstyle = 'gritter-error gritter-center';
                                } else if (style == 'warning-center') {
                                    vstyle = 'gritter-warning gritter-center';
                                } else if (style == 'success-center') {
                                    vstyle = 'gritter-success gritter-center';
                                } else {
                                    vstyle = 'gritter-info gritter-center';
                                }
                                //vstyle = vstyle+vclass;

                                $.gritter.add({
                                    title: vtitle,
                                    text: message,
                                    class_name: vstyle
                                });
                            }/*show alert*/

                        });


        </script>


        <!-- inline scripts related to this page -->
        <script>


            (function ($) {
                $.fn.serializeAllArray = function () {
                    var obj = {};

                    $('input', this).each(function () {
                        obj[this.name] = $(this).val();
                    });
                    //return $.param(obj);
                    return obj;
                }
            })(jQuery);

            jQuery(function ($) {
                for (idx in OnReadyArray) {
                    OnReadyArray[idx]();
                }
                OnReadyArray = [];
            });
            jQuery(window).resize(function () { /* What ever */
                for (idx in OnResizeArray) {
                    OnResizeArray[idx]();
                }
            });

            function ShowModal(vurl, width, modalname) {
                if (typeof width == "undefined") {
                    width = '700';
                }
                if (typeof modalname == "undefined") {
                    modalname = "#<?php echo $namespace; ?>ajax-modalnormal";
                }
                var modalobj = $(modalname);
                //console.log(modalobj);
                $(modalobj).attr('data-width', width);
                //console.log(modalobj);
                $('body').modalmanager('loading');
                modalobj.load(vurl, '', function () {
                    console.log($(modalobj).find(".modal-header").attr('data-width'));
                    //console.log($(modalobj).find(".modal-header"));
                    //console.log(modalobj);
                    modalobj.modal();
                });

            }

            function ShowConfirmationOkCancel(obj, vTitle, vMessage, callbackOk, callbackCancel) {
                $('body').modalmanager('loading');
                var tmpl = [
                    // tabindex is required for focus
                    '<div id="modalwindow" class="modal fade" tabindex="-1">',
                    '<div class="modal-header">',
                    '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>',
                    '<h2>' + vTitle + '</h2>',
                    '</div>',
                    '<div class="modal-body">',
                    '<p>' + vMessage + '</p>',
                    '</div>',
                    '<div class="modal-footer">',
                    '<a id="okButton" href="#" data-dismiss="modal" class="btn btn-primary">OK</a>',
                    '<a id="cancelButton" href="#" data-dismiss="modal" class="btn btn-default">Cancel</a>',
                    '</div>',
                    '</div>'
                ].join('');

                $(tmpl).modal("show");
                $('#okButton').click(function () {
                    callbackOk(obj);
                    //alert('ok');
                    //$('#modalwindow').modal('hide');
                });
                $('#cancelButton').click(function () {
                    callbackCancel(obj);
                    //alert('cancel');
                    //$('#modalwindow').modal('hide');
                });
                $("#modalwindow").on('hidden', function (obj) {
                    if (typeof obj == 'undefined') {

                    }
                    //callback(); 
                });

            }


            OnReadyArray.push(function () {

                $('.btn_submit').click(function (event) {
                    target = event.target;
                    console.log(target);
                    console.log($(target).attr('id'));
                    actval = $(target).attr('data-action');
                    formname = $(target).attr('data-form');
                    console.log($('#' + formname).find('#action'));
                    if ($('#' + formname).find('#action').length == 0) {
                        vinput = '<input type="hidden" id="action" name="action" value="' + actval + '" >';
                        $('#' + formname).append(vinput);
                    } else {
                        $('#' + formname).find('#action').val(actval);
                    }
                    console.log('filter');

                    $('#' + formname).submit();
                });
            });

			//var myVar = setInterval(testRealtime ,1000);
				function testRealtime() {
					var url_send_invitation ="<?php echo base_url()?>"+"index.php/invitation/realtimeTesting";	
											//alert(invitation_from);										
											$.ajax({
												url		 : url_send_invitation,
												type	 : "post",
												dataType : "json" ,
												data     : {},
												success	 : function (response) {
													//alert(1);
													//var obj = JSON.parse(data);         	   
													//alert(JSON.parse()response);
													$("#notif_invitation").text(response)
												},
												error    : function(jqXHR, textStatus, errorThrown) {
												console.log(textStatus, errorThrown);
											   }
											});
					}
					var notif_invitation = setInterval(getInvitationByUserId,5000);
					
					function getInvitationByUserId() {
											var url_notif_invitation ="<?php echo base_url()?>"+"index.php/invitation/getInvitationByUserId";	
											var json_user_id = {"userid_invittation":$("#global_user_id").val()};
											$.ajax({
												url		 : url_notif_invitation,
												type	 : "post",
												dataType : "json" ,
												data     : json_user_id,
												success	 : function (response) {
													$("#notif_invitation").text(response[0].num_of_invittation)
												},
												error    : function(jqXHR, textStatus, errorThrown) {
												console.log(textStatus, errorThrown);
											   }
											});
					}
					
					
					$("#btn-notif-invittation").click(function(){
						var url_notif_invitation ="<?php echo base_url()?>"+"index.php/invitation/getInvitationByUserId";	
											var json_user_id = {"userid_invittation":$("#global_user_id").val()};
											$.ajax({
												url		 : url_notif_invitation,
												type	 : "post",
												dataType : "json" ,
												data     : json_user_id,
												success	 : function (response) {
													$('#dropdown-notif-invite').empty();
														$('#dropdown-notif-invite').append(
															" <li class='dropdown-header'> " +
															" Invitation " +
															" </li>" 
														);
														var base_url="<?php echo base_url();?>"
													for (var i=0; i < response.length; i++){
														$('#dropdown-notif-invite').append(			
															"<li style='border:1px dashed green;'>" +
																" <div class='clearfix'> " +
																	" <span class='pull-left' style='line-height:20px;'> " +
																		" <div class='row'> " +
																			" <div class='col-xs-12'> " +
																				" <div class='col-xs-4'> " +
																					"<img style='max-width:100%; max-height:100%;' src='"+base_url+"files/uploads/user_profile/"+response[i].dir_name+"/"+response[i].photo_name+"'/>" +
																				" </div>" +
																				" <div class='col-xs-8' style='color:black;'> " +
																					response[i].xinvite_from +
																					"&nbsp; Invite you to join&nbsp" +
																					response[i].bussines_name+"&nbsp;bussines" +
																					" <br/>" +
																					"Invitation Date :" +
																					response[i].invitation_date+
																				" </div> " +
																			" </div> " +			
																		" </div> " +
																		" <hr> " +
																		
																		" <div class='row'> " +
																			" <div class='col-xs-12'> " +
																				" <div class='col-xs-4'> " +
																				"<i class='fa fa-search-plus' aria-hidden='true'></i>"+
																				" <a style='color:green;' href='<?php echo base_url() ?>index.php/invitation/showInvitationByBussinesIdAndInviteFrom?bussines_id="+ response[i].bussines_id +"&invite_from="+response[i].invite_from+"'> " +
																					"Detail" +
																				" </a> " +
																				" </div>" +	
																				" <div class='col-xs-4'> " +
																				"<i class='fa fa-trash-o' aria-hidden='true'></i>"+
																					"Remove" +
																				" </div>" +																					
																			" </div> " +			
																		" </div> " +

																	" </span> " +
																" </div> " +
															" " +
															" </li> " +
															" ");
															
													}
													$('#dropdown-notif-invite').append(			
															"<li style='border:1px dashed green;'>" +
															" <center> " +
															" <i class='fa fa-ellipsis-h fa-lg' style='color:green;' href='google.com'> " +														
															" </i> " +
															" </center> " +
															"<li style='border:1px dashed green;'>");
													
													
												},
												error    : function(jqXHR, textStatus, errorThrown) {
												console.log(textStatus, errorThrown);
											   }
											});
			
					});			
			
        </script>

    </body>
</html>
