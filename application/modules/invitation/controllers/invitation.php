<?php 
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class invitation extends MY_Controller {

    public function __construct() {
        parent::__construct();
        //  $this->load->model('m_workflow', 'wflow');
        // $this->load->library('mustache');
        $this->load->helper('url');
        $this->load->helper('tool_helper');
		$this->load->model("global/m_global","mglobal");
		$this->load->model('bussines/m_bussines', 'mbussines');
		$this->load->model('m_invitation', 'minvitation');
		$this->load->model("login/m_login","mlogin");
		$this->load->model('menu/m_menu','mmenu');
    }

    public function index() {
		
    }
	

  public function sendInvitation(){	
	$data_invitation=array(
		 "invitation_from"=>$_POST["invitation_from"],
		 "invitation_to"=>$_POST["invitation_to"],
		 "bussines_id"=>$_POST["bussines_id"]
	 );
	  $this->minvitation->sendInvitation($data_invitation);
	echo json_encode(array("message"=>"Invitationis Delivered"));
  }
  public function getInvitationByUserId(){
	  $userid=$_POST["userid_invittation"];
	  $data_invitation=$this->minvitation->getInvitationByUserId($userid);
      echo json_encode($data_invitation);
  }
  
  public function realtimeTesting(){
	  $invite_number = $this->minvitation->realTimeTesting();  
	   echo  $invite_number["count"];
  }
  
  public function showAllInvittation(){
	  echo "test";
  }
  
  public function showInvitationDetail(){
	   $sess_data=$this->mlogin->getSessionData();
	   $data = $this->mmenu->getDefaultData();		
	   if(isset($sess_data["username"])){
			$full_name= $this->mglobal->getDataUserByUsername($sess_data["username"])["fullname"];
			$userid= $this->mglobal->getDataUserByUsername($sess_data["username"])["userid"];
			$addres= $this->mglobal->getDataUserByUsername($sess_data["username"])["addres"];
			$foto_profile= $this->mglobal->getPhotoProfile($userid)["photo_name"];
			$dir_name=$this->mglobal->getPhotoProfile($userid)["dir_name"];
			$data["foto_profile"]=$foto_profile;
			$data["dir_name"]=$dir_name;
			$data["data_invititation_detail"] = $this->mbussines->getDataBussinesByBussinesId($_GET["bussines_id"]);
			//print_r($data["data_invititation_detail"]);die();
			$data["page"]="Detail Invitation";
			$data["pageid"]="other";
			$data["full_name"]=$full_name;
			$data["userid"]=$userid;
			$data["global_user_id"]=$userid;
			$data["addres"]=$addres;				
			$html = $this->load->view("v_invitationdetail",$data,TRUE);	
	   }else{
		    $data["page"]="Notifikasi";
			$data["pageid"]="other";
			$html = $this->load->view("v_notifnotlogin",$data,TRUE);		
	   }
			$data["pagecontent"]=$html;     
			$this->load->view('menu/baseview',$data); 
  }
  
  public function showInvitationByBussinesIdAndInviteFrom(){
	   $sess_data=$this->mlogin->getSessionData();
	   $data = $this->mmenu->getDefaultData();		
	   if(isset($sess_data["username"])){
			$full_name= $this->mglobal->getDataUserByUsername($sess_data["username"])["fullname"];
			$userid= $this->mglobal->getDataUserByUsername($sess_data["username"])["userid"];
			$addres= $this->mglobal->getDataUserByUsername($sess_data["username"])["addres"];
			$foto_profile= $this->mglobal->getPhotoProfile($userid)["photo_name"];
			$dir_name=$this->mglobal->getPhotoProfile($userid)["dir_name"];
			$data["foto_profile"]=$foto_profile;
			$data["dir_name"]=$dir_name;
			$data["data_invititation_detail"] = $this->minvitation->getDataInvittationByBussinesIdAndInviteFrom($_GET["bussines_id"],$_GET["invite_from"]);
			$data["page"]="Detail Invitation";
			$data["pageid"]="other";
			$data["full_name"]=$full_name;
			$data["userid"]=$userid;
			$data["global_user_id"]=$userid;
			$data["addres"]=$addres;				
			$html = $this->load->view("v_invitationdetail",$data,TRUE);	
	   }else{
		    $data["page"]="Notifikasi";
			$data["pageid"]="other";
			$html = $this->load->view("v_notifnotlogin",$data,TRUE);		
	   }
			$data["pagecontent"]=$html;     
			$this->load->view('menu/baseview',$data); 
  }
  
  public function approveInvittation(){	
	$data_invitation=array(
		 "invittation_id"=>$_POST["invittation_id"]
	 );
	  $this->minvitation->approveInvittation($data_invitation);
	echo json_encode(array("message"=>"Invitationis Approved"));
  }
  
  
  

}

?>
