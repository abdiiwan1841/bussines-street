<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class investation extends MY_Controller {

    public function __construct() {
        parent::__construct();
        //  $this->load->model('m_workflow', 'wflow');
        // $this->load->library('mustache');
        $this->load->helper('url');
        $this->load->helper('tool_helper');
		$this->load->model("global/m_global","mglobal");
		$this->load->model('investation/m_investation', 'minvestation');
    }

    public function index() {
		$this->load->model('m_artikel','martikel');		       
		$datalookup=$this->martikel->loadDataLookupArtikel();
        $data["lookup_kategori"]=$datalookup;			
		$this->load->view("v_tambahkonten",$data);
    }
	
	public function showContentItemForm(){
		//echo $_GET["artikel_id"];
		
		$this->load->model('m_artikel','martikel');
		$artikel_id = $_GET["artikel_id"];		
		$datalookup_kategori=$this->martikel->loadDataKategoriByArtikelId($artikel_id);
		$datalookup_subkategori=$this->martikel->loadDataSubKategoriByArtikelId($artikel_id);
		$datalookup_subkategori=$this->martikel->loadDataSubKategoriByArtikelId($artikel_id);
		$datajudulartikel=$this->martikel->loadJudulArtikelByArtikelId($artikel_id);
		//loadJudulArtikelByArtikelId
		$data["lookup_kategori"]=$datalookup_kategori;
        $data["lookup_subkategori"]=$datalookup_subkategori;
		$data["judulartikel"]=$datajudulartikel["judul_artikel"];	
        $data["artikel_id"]	=$artikel_id;
		 //echo $datajudulartikel["judul_artikel"];
		$this->load->view("v_tambahkontenitem",$data);
	}
	
	function showEditContentItemForm(){
		$this->load->model('m_artikel','martikel');
		
		$artikel_konten_id=$_GET["artikel_konten_id"];
		$data_artikel_konten=$this->martikel->loadArtikelKontenByArtikelKontenId($artikel_konten_id);
		$artikel_id = $data_artikel_konten["artikel_id"];
		$judul_konten_artikel = $data_artikel_konten["judul_konten_artikel"];
		$konten = $data_artikel_konten["konten"];
		
		$datalookup_kategori=$this->martikel->loadDataKategoriByArtikelId($artikel_id);
		$datalookup_subkategori=$this->martikel->loadDataSubKategoriByArtikelId($artikel_id);
		$datalookup_subkategori=$this->martikel->loadDataSubKategoriByArtikelId($artikel_id);
		$datajudulartikel=$this->martikel->loadJudulArtikelByArtikelId($artikel_id);
		//loadJudulArtikelByArtikelId
		$data["lookup_kategori"]=$datalookup_kategori;
        $data["lookup_subkategori"]=$datalookup_subkategori;
		$data["judulartikel"]=$datajudulartikel["judul_artikel"];	
        $data["artikel_id"]	=$artikel_id;
		$data["judul_konten_artikel"]=$judul_konten_artikel;
		$data["konten"]	=$konten;
		//echo $konten; die();
		 //echo $datajudulartikel["judul_artikel"];
		$this->load->view("v_editkontenitem",$data);
	}
	public function saveartikel(){
		// echo "save ready";
		 
		$kategori_nama = $_POST["kategori_nama"]; 
		$subkategori_nama = $_POST["subkategori_nama"];
		$judul_artikel =$_POST["judul_artikel"];
		$judul_konten = $_POST["judul_konten"];
		$content = $_POST["content"];
		
		$this->load->model('m_artikel','martikel');		
		$this->martikel->saveartikel($kategori_nama,$subkategori_nama,$judul_artikel,$judul_konten,$content);
		header("Location:".base_url()."/index.php/menu/artikel");
    }
	
	public function saveArtikelContent(){
		$content = $_POST['editor1'];
		$content =removeAllnewlineCharacters($content);
	    $content = "'".$content."'";	
		$kategori_nama = $_POST["kategori_nama"]; 
		$artikel_id = $_POST["artikel_id"];
		$subkategori_nama = $_POST["subkategori_nama"];
		$judul_artikel =$_POST["judul_artikel"];
		$judul_konten = $_POST["judul_konten"];
		$content = $content;
		
		$this->load->model('m_artikel','martikel');		
		$this->martikel->saveArtikelContent($artikel_id,$kategori_nama,$subkategori_nama,$judul_artikel,$judul_konten,$content);
		header("Location:".base_url()."/index.php/menu/artikel");
    }
	
	public function getLookupSubkategori(){
		$this->load->model('m_artikel','martikel');		
		$kategoriid=$_POST['kategori_nama'];
		//echo $kategoriid;
		$data_subkategori=$datalookup=$this->martikel->loadDataSubKategori($kategoriid);
		echo json_encode($data_subkategori);
		//echo $kategori_nama;
		//print_r($data_subkategori);
		//echo "data server ok";
	}

   public function showInvestationPlanForm(){
	   $this->load->model("login/m_login","mlogin");
	   $sess_data=$this->mlogin->getSessionData();
	   $this->load->model('menu/m_menu','mmenu');
	   $data = $this->mmenu->getDefaultData();	
	   if(isset($sess_data["username"])){
			$full_name= $this->mglobal->getDataUserByUsername($sess_data["username"])["fullname"];
			$userid= $this->mglobal->getDataUserByUsername($sess_data["username"])["userid"];
			$addres= $this->mglobal->getDataUserByUsername($sess_data["username"])["addres"];
			$data["page"]="Investation Plan Form";
			$data["pageid"]="other";
			$data["full_name"]=$full_name;
			$data["userid"]=$userid;
			$data["addres"]=$addres;	
			$foto_profile= $this->mglobal->getPhotoProfile($userid)["photo_name"];
			$dir_name=$this->mglobal->getPhotoProfile($userid)["dir_name"];
			$data["foto_profile"]=$foto_profile;
			$data["dir_name"]=$dir_name;
			$data["global_user_id"]=$userid;
			$html = $this->load->view("v_forminvestationplan",$data,TRUE);	
	   }else{
		    $data["page"]="Notifikasi";
			$data["pageid"]="other";
			$html = $this->load->view("global/v_notifnotlogin",$data,TRUE);		
	   }
			$data["pagecontent"]=$html;     
			$this->load->view('menu/baseview',$data); 	   
   }
   
   public function saveInvestationPlan(){
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
       $this->minvestation->saveInvestationPlan($params);
	   header('Location: '.base_url()."index.php/investation/displayDataInvestationByUserId?userid=".$_POST["userid"]);
   }
   
     public function displayDataInvestationByUserId(){
	    $data["data_bussines_by_userid"]=$this->minvestation->getDataInvestationByUserId($_GET["userid"]);
		$data["global_user_id"]=$_GET["userid"];
		$userid=$_GET["userid"];
		$foto_profile= $this->mglobal->getPhotoProfile($userid)["photo_name"];
		$dir_name=$this->mglobal->getPhotoProfile($userid)["dir_name"];
		$data["foto_profile"]=$foto_profile;
		$data["dir_name"]=$dir_name;
	    $html = $this->load->view('v_dataInvestation',$data,TRUE);
	    $datapage=array(
			"pageid"=>"other",
			"page"=>"My Investation Plan"
	    );
	   $this->mglobal->loadTemplate($html,$datapage);
	  
  }

}

?>
