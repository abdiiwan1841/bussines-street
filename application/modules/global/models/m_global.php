<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/* Manggu Framework
 * Simple PHP Application Development
 * Kusnassriyanto S. Bahri
 * kusnassriyanto@gmail.com
 * 
 */

class m_global extends MY_Model {
	function getDataUserByUsername($username){
		$params = array("username"=>$username);
		$sql = "select * from sys_users where username=:username";
        
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');
		
        return $result[0];	
		//print_r($result);
	}
	
	function getPhotoProfile($userid){
		$params = array("userid"=>$userid);
		$sql = "select max(a.photo_id) as dir_name, max(a.photo_id) as photo_name from app_user_photo a where userid=:userid";
        
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');
		
        return $result[0];	
		//print_r($result);
	}
	
	function loadTemplate($html,$pagedata){
		//$data["page"]="test";
		//$this->load->view('menu/templateview',$data); 
		 $this->load->model("login/m_login","mlogin");
		$sess_data=$this->mlogin->getSessionData();
		$full_name= $this->mglobal->getDataUserByUsername($sess_data["username"])["fullname"];
		$userid= $this->mglobal->getDataUserByUsername($sess_data["username"])["userid"];
		$addres= $this->mglobal->getDataUserByUsername($sess_data["username"])["addres"];
		
        $this->load->model('menu/m_menu','mmenu');	
        $data = $this->mmenu->getDefaultData();
		$data["page"]=$pagedata["page"];
		$data["pageid"]=$pagedata["pageid"];
		//$data["full_name"]=$full_name;
		//$data["userid"]=$userid;
		//$data["addres"]=$addres;				
		//$html = $this->load->view("v_formbussinesplan",$data,TRUE);		
		$data["pagecontent"]=$html;      	
		$this->load->view('menu/baseview',$data); 			
	}
  
}

?>
