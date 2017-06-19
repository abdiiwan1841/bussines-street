<?php
ob_start();
if (!defined('BASEPATH'))
    exit('No direct script access allowed'); 
?>	
		<form action="<?php echo base_url(); ?>index.php/bussines/saveBussinesPlan" method="POST">
		<div class="row">
			<div class="col-md-4">
				Name
			</div>
			<div class="col-md-4">
			    Bussines Role
			</div>
		    <div class="col-md-4">
		        Bussines Location
		    </div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<input name="full_name" id="full_name" readonly="readonly" type="text" value="<?php echo $full_name; ?>" class="form-control crud-edit"/>
				<input name="userid" id="userid" type="hidden" class="form-control crud-edit" value="<?php echo $userid; ?>"/>
			</div>
			<div class="col-md-4">
			   <input name="full_name" id="full_name" readonly="readonly" type="text" value="Pencari Modal" class="form-control crud-edit"/>
			</div>
		    <div class="col-md-4">
		      <input name="bussines_location" id="bussines_location" type="text" class="form-control crud-edit"/>
		    </div>
		</div>
		<div class="row">
			<div class="col-md-4">
				Address
			</div>
			<div class="col-md-4">
			    Budget Alocation Plan
			</div>
		    <div class="col-md-4">
		       Other Field 2
		    </div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<input type="text" value = "<?php echo $addres; ?>" name="addres" id="addres" readonly="readonly" class="form-control crud-edit"/>
			</div>
			<div class="col-md-4">
			   <input type="text" name="budget_alocation" id="budget_alocation" class="form-control crud-edit"/>
			</div>
		    <div class="col-md-4">
		      <input type="text" class="form-control crud-edit"/>
		    </div>
		</div>
		<div class="row">
			<div class="col-md-4">
				Bussines Name
			</div>
			<div class="col-md-4">
			    Profit Sharing
			</div>
		    <div class="col-md-4">
		       Other Field 2
		    </div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<input type="text" name="bussines_name" id="bussines_name" class="form-control crud-edit"/>
			</div>
			<div class="col-md-4">
			   <input type="text" class="form-control crud-edit" name="profit_sharing" name="profit_sharing" />
			</div>
		    <div class="col-md-4">
		      <input type="text" class="form-control crud-edit"/>
		    </div>
		</div>
		<div class="row">
		<div class="col-md-12">
			Bussines Description Plan
		</div>
		
		</div>
		<div class="row">
			<div class="col-md-12">
			<textarea name="editor1" id="editor1"></textarea>
			</div>
		</div>
		<div class="row" style="margin-top:10px;">
			<div class="col-md-12">
				<button class="btn btn-lg btn-success">
				Save
				</button>
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

