<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class bussines extends MY_Controller {

    public function __construct() {
        parent::__construct();
        //  $this->load->model('m_workflow', 'wflow');
        // $this->load->library('mustache');
        $this->load->helper('url');
        $this->load->helper('tool_helper');
		$this->load->model("global/m_global","mglobal");
		 $this->load->model('m_bussines', 'mbussines');
    }

    public function index() {
		$this->load->model('m_artikel','martikel');		       
		$datalookup=$this->martikel->loadDataLookupArtikel();
        $data["lookup_kategori"]=$datalookup;			
		$this->load->view("v_tambahkonten",$data);
    }
	
	
   public function showBussinesPlanForm(){
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
			$data["page"]="Bussines Plan Form";
			$data["pageid"]="other";
			$data["full_name"]=$full_name;
			$data["userid"]=$userid;
			$data["global_user_id"]=$userid;
			$data["addres"]=$addres;				
			$html = $this->load->view("v_formbussinesplan",$data,TRUE);	
	   }else{
		    $data["page"]="Notifikasi";
			$data["pageid"]="other";
			$html = $this->load->view("v_notifnotlogin",$data,TRUE);		
	   }
			$data["pagecontent"]=$html;     
			$this->load->view('menu/baseview',$data); 	   
   }
  public function displayDataBussinesByUserId(){
	  if($_GET["userid"]!=""){
	    $data["data_bussines_by_userid"]=$this->mbussines->getDataBussinesByUserId($_GET["userid"]);
		$data["global_user_id"]=$_GET["userid"];
		$foto_profile= $this->mglobal->getPhotoProfile($_GET["userid"])["photo_name"];
		$dir_name=$this->mglobal->getPhotoProfile($_GET["userid"])["dir_name"];
		$data["foto_profile"]=$foto_profile;
		$data["dir_name"]=$dir_name;
	    $html = $this->load->view('v_databussines',$data,TRUE);
	    $datapage=array(
			"pageid"=>"other",
			"page"=>"My Bussines Plan"
	    );
		//print_r($datapage);die();
	   $this->mglobal->loadTemplate($html,$datapage);
	  }else{
		  //echo "anda harus Login";
		  echo "Anda Harus Login Untuk Mengakses Layananan ini!<br/>"."<a href='".base_url()."index.php/"."login?return_page_to=Search Engine'>Login<a>";
	  }
  }
  
   public function saveInvestationPlan(){
	   
	   $params=array(
			"userid"=>$_POST["userid"],
			"addres"=>$_POST["addres"],
			"bussines_name"=>$_POST["bussines_name"],
			"bussines_role"=>1,
			"budget_alocation"=>$_POST["budget_alocation"],
			"profit_sharing"=>$_POST["profit_sharing"],
			"bussines_location"=>$_POST["bussines_location"],
			"bussines_description"=>$_POST["editor1"],
			"fullname"=>$_POST["full_name"]
	   );	      
       $this->mbussines->saveBussinesPlan($params);
	   header('Location: '.base_url()."index.php/bussines/displayDataBussinesByUserId?userid=".$_POST["userid"]);
   }
  
   public function saveBussinesPlan(){
	   
	   $params=array(
			"userid"=>$_POST["userid"],
			"addres"=>$_POST["addres"],
			"bussines_name"=>$_POST["bussines_name"],
			"bussines_role"=>2,
			"budget_alocation"=>$_POST["budget_alocation"],
			"profit_sharing"=>$_POST["profit_sharing"],
			"bussines_location"=>$_POST["bussines_location"],
			"bussines_description"=>$_POST["editor1"],
			"fullname"=>$_POST["full_name"]
	   );	      
       $this->mbussines->saveBussinesPlan($params);
	   header('Location: '.base_url()."index.php/bussines/displayDataBussinesByUserId?userid=".$_POST["userid"]);
   }
   public function getDataBussinesByBussinesId(){
	  $bussines_id=$_POST["bussines_id"];
	  $data_bussines_by_bussines_id=$this->mbussines->getDataBussinesByBussinesId($bussines_id);
	  echo json_encode($data_bussines_by_bussines_id); 
	}

	
	 public function do_upload(){
		 $bussines_id=$_POST["bussines_id_photo"];
		 $this->mbussines->insertBussinesPhoto($bussines_id);
		 $dir_name=$this->mbussines->getPhotoName($bussines_id)["photo_bussines_name"];
		 //print_r($photo_name["photoname"]);
		 //echo $dir_name;
		 //if (!file_exists('path/to/directory')) {
			// $path=base_url()."system/uploads/user_file";
			mkdir('files/uploads/bussines_photo/'.$dir_name,0777, true);
		// }
		 $config = array(
		'upload_path' => "./files/uploads/bussines_photo/".$dir_name,
		'allowed_types' => "gif|jpg|png|jpeg|pdf",
		'overwrite' => TRUE,
		'max_size' => "2048000", // Can be set to particular file size , here it is 2 MB(2048 Kb)
		'max_height' => "768",
		'max_width' => "1024"
		);
		
		 $config = array(
		'upload_path' => "./files/uploads/bussines_photo/".$dir_name,
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
		
		rename("files/uploads/bussines_photo/".$dir_name."/".$file_name,"files/uploads/bussines_photo/".$dir_name."/".$dir_name);
		
		 header('Location: '.base_url()."index.php/bussines/displayDataBussinesByUserId?userid=".$_POST["userid_photo"]);
		}
		else
		{
		$error = array('error' => $this->upload->display_errors());
		//echo $error;
		print_r($error);
		//$this->load->view('file_view', $error);
		}
		
		}
		
		public function createContract(){
		$data["data_bussines_by_userid"]=$this->mbussines->getDataBussinesByUserId($_GET["userid"]);
		$data["data_bussines_by_userid_and_bussinesid"]=$this->mbussines->getDataBusinesByUserIdAndBussinesId($_GET["userid"],$_GET["bussinesid"]);
		//print_r($data["data_bussines_by_userid_and_bussinesid"]);
		$data["data_pihak_2"]=$this->mbussines->getDataUserByUserId($_GET["invite_from"]);
		$data["global_user_id"]=$_GET["userid"];
		$foto_profile= $this->mglobal->getPhotoProfile($_GET["userid"])["photo_name"];
		$dir_name=$this->mglobal->getPhotoProfile($_GET["userid"])["dir_name"];
		$data["foto_profile"]=$foto_profile;
		$data["dir_name"]=$dir_name;
	    $html = $this->load->view('v_formsuratkerjasamainvestasi',$data,TRUE);
		
		
	    $datapage=array(
			"pageid"=>"other",
			"page"=>"Perjanjian Kerjasama"
	    );
		//print_r($datapage);die();
	   $this->mglobal->loadTemplate($html,$datapage);
		}
		
		public function createContractPihak2(){
		$data["data_bussines_by_userid"]=$this->mbussines->getDataBussinesByUserId($_GET["userid_pihak2"]);
		$data["global_user_id"]=$_GET["userid"];
		$foto_profile= $this->mglobal->getPhotoProfile($_GET["userid"])["photo_name"];
		$dir_name=$this->mglobal->getPhotoProfile($_GET["userid"])["dir_name"];
		$data["foto_profile"]=$foto_profile;
		$data["dir_name"]=$dir_name;
	    $html = $this->load->view('v_formsuratkerjasamainvestasi',$data,TRUE);
		
		
	    $datapage=array(
			"pageid"=>"other",
			"page"=>"Perjanjian Kerjasama"
	    );
		//print_r($datapage);die();
	   $this->mglobal->loadTemplate($html,$datapage);
		}
		
		public function calculateProfitSharing(){
		if(isset($_GET["userid"])){
			$data["data_bussines_by_userid"]=$this->mbussines->getDataBussinesByUserId($_GET["userid"]);	
			$data["global_user_id"]=$_GET["userid"];	
			$foto_profile= $this->mglobal->getPhotoProfile($_GET["userid"])["photo_name"];
			$dir_name=$this->mglobal->getPhotoProfile($_GET["userid"])["dir_name"];
			$data["foto_profile"]=$foto_profile;
			$data["dir_name"]=$dir_name;
			$data_profit_sharing=$this->mbussines->getDataProfitSharing($_GET["bussinesid"]);
			//print_r($data_profit_sharing);die();
			$data["data_profit_sharing"]=$data_profit_sharing;
			
			$html = $this->load->view('v_formperhitunganbagihasil',$data,TRUE);
			$datapage=array(
				"pageid"=>"other",
				"page"=>"Perhitungan Bagi Hasil"
			);
		//print_r($datapage);die();
	   $this->mglobal->loadTemplate($html,$datapage);
		}else{
			echo "Anda Harus Login Untuk Mengakses Layananan ini!<br/>"."<a href='".base_url()."index.php/"."login?return_page_to=Search Engine'>Login<a>";
		}	
		}
		
		//public function display
		
		public function calculateRencanaAngsuran(){
		if(isset($_GET["userid"])){
			$data["data_bussines_by_userid"]=$this->mbussines->getDataBussinesByUserId($_GET["userid"]);
			$data["global_user_id"]=$_GET["userid"];
			$foto_profile= $this->mglobal->getPhotoProfile($_GET["userid"])["photo_name"];
			$dir_name=$this->mglobal->getPhotoProfile($_GET["userid"])["dir_name"];
			$data["foto_profile"]=$foto_profile;
			$data["dir_name"]=$dir_name;
			$months=array("0"=>"Januari",
						  "1"=>"Februari",
						  "2"=>"Maret",
						  "3"=>"April",
						  "4"=>"Mei",
						  "5"=>"Juni",
						  "6"=>"Juli",
						  "7"=>"Agustus",
						  "8"=>"September",
						  "9"=>"Oktober",
						  "10"=>"Novamber",
						  "11"=>"Desember"
			);
			$data["data_months"]=$months;
			$data_profit_sharing=$this->mbussines->getDataProfitSharing($_GET["bussinesid"]);
			$data["data_profit_sharing"]=$data_profit_sharing;
			$html = $this->load->view('v_formperhitunganrencanaangsuran',$data,TRUE);
			$datapage=array(
				"pageid"=>"other",
				"page"=>"Perhitungan Rencana Angsuran"
			);
			$this->mglobal->loadTemplate($html,$datapage);
			}else{
				echo "Anda Harus Login Untuk Mengakses Layananan ini!<br/>"."<a href='".base_url()."index.php/"."login?return_page_to=Search Engine'>Login<a>";
			}	
		}
}

?>
