<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/* Manggu Framework
 * Simple PHP Application Development
 * Kusnassriyanto S. Bahri
 * kusnassriyanto@gmail.com
 * 
 */

class profile extends MY_Controller {

       public function __construct() {
        parent::__construct();
        $this->load->helper(array('form', 'url'));
        $this->load->helper('url');
        $this->load->helper('tool_helper');
		$this->load->model("global/m_global","mglobal");
		$this->load->model('m_profile', 'mprofile');
    }

    public function index() {
		$this->load->model('m_artikel','martikel');		       
		$datalookup=$this->martikel->loadDataLookupArtikel();
        $data["lookup_kategori"]=$datalookup;			
		$this->load->view("v_tambahkonten",$data);
    }
	 public function showProfile(){
	   $this->load->model("login/m_login","mlogin");
	   $sess_data=$this->mlogin->getSessionData();
	   $this->load->model('menu/m_menu','mmenu');
	   $data = $this->mmenu->getDefaultData();		
	   if(isset($sess_data["username"])){
			$full_name= $this->mglobal->getDataUserByUsername($sess_data["username"])["fullname"];
			$userid= $this->mglobal->getDataUserByUsername($sess_data["username"])["userid"];
			$addres= $this->mglobal->getDataUserByUsername($sess_data["username"])["addres"];
			$foto_profile= $this->mglobal->getPhotoProfile($userid)["photo_name"];
			$dir_name=$this->mglobal->getPhotoProfile($userid)["dir_name"];
			$data["foto_profile"]=$foto_profile;
			$data["dir_name"]=$dir_name;
			$data["page"]="Profile";
			$data["pageid"]="other";
			$data["full_name"]=$full_name;
			$data["userid"]=$userid;
			$data["global_user_id"]=$userid;
			$data["addres"]=$addres;
			$data["data_profile"]=$this->mprofile->getDataProfile($userid);
			$html = $this->load->view("v_profile",$data,TRUE);	
	   }else{
		    $data["page"]="Notifikasi";
			$data["pageid"]="other";
			$html = $this->load->view("v_notifnotlogin",$data,TRUE);		
	   }
			$data["pagecontent"]=$html;     
			$this->load->view('menu/baseview',$data); 	   
	 }
	 
	 public function do_upload(){
		 $userid=$_POST["userid_photo"];
		 $this->mprofile->insertUserPhoto($userid);
		 $dir_name=$this->mprofile->getPhotoName($userid)["photoname"];
		 //print_r($photo_name["photoname"]);
		 //echo $dir_name;
		 //if (!file_exists('path/to/directory')) {
			// $path=base_url()."system/uploads/user_file";
			mkdir('files/uploads/user_profile/'.$dir_name,0777, true);
		// }
		 $config = array(
		'upload_path' => "./files/uploads/user_profile/".$dir_name,
		'allowed_types' => "gif|jpg|png|jpeg|pdf",
		'overwrite' => TRUE,
		'max_size' => "2048000", // Can be set to particular file size , here it is 2 MB(2048 Kb)
		'max_height' => "768",
		'max_width' => "1024"
		);
		
		 $config = array(
		'upload_path' => "./files/uploads/user_profile/".$dir_name,
		'allowed_types' => "gif|jpg|png|jpeg|pdf",
		'overwrite' => TRUE,
		'max_size' => "2048000"// Can be set to particular file size , here it is 2 MB(2048 Kb)
		);
		//echo $config["upload_path"]; die();
		
		$this->load->library('upload', $config);
		if($this->upload->do_upload())
		{
		$upload_data = $this->upload->data(); //Returns array of containing all of the data related to the file you uploaded.
		$file_name = $upload_data['file_name'];
		//$data = array('upload_data' => $this->upload->data());
		//$file_name = $data['file_name'];
		//echo "upload file".$file_name."sukses";
		
		rename("files/uploads/user_profile/".$dir_name."/".$file_name,"files/uploads/user_profile/".$dir_name."/".$dir_name);
		
		 header('Location: '.base_url()."index.php/profile/showProfile?userid=".$userid);
		}
		else
		{
		$error = array('error' => $this->upload->display_errors());
		//echo $error;
		print_r($error);
		//$this->load->view('file_view', $error);
		}
		
		}
}

?>
