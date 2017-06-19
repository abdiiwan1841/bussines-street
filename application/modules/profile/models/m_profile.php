<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/* Manggu Framework
 * Simple PHP Application Development
 * Kusnassriyanto S. Bahri
 * kusnassriyanto@gmail.com
 * 
 */

class m_profile extends MY_Model {

    function showDataTest() {
       
        return "data ini dari model";
    }
	
	function loadDataLookupArtikel() {
        $sql = "select a.*, a.nama_kategori from app_kategori a";
        $params = array(""=>"");
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');
		$lookupkategori=array(""=>"");
        if (isset($result)) {
           $lookupkategori = $result;
        } else {
            $lookupkategori = array("info"=>"no data");
        }
        return $lookupkategori;
		
    }
	function loadDataKategoriByArtikelId($params){
		$sql = "select b.nama_kategori,b.kategori_id from app_artikel a 
				left join app_kategori b on a.kategori_id = b.kategori_id 
				where a.artikel_id=:artikel_id
				UNION ALL select c.nama_kategori,c.kategori_id  from app_kategori c";
        $params = array("artikel_id"=>$params);
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');
		$lookupkategori=array(""=>"");
        if (isset($result)) {
           $lookupkategori = $result;
        } else {
            $lookupkategori = array("info"=>"no data");
        }
        return $lookupkategori;	
	}
	
	
	
	function loadArtikelKontenByArtikelKontenId($artikel_konten_id){
		$sql = "select b.nama_kategori,c.subkategori_nama,d.judul_artikel,d.artikel_id,a.judul_konten_artikel,a.konten,a.artikel_konten_id,
		d.kategori_id,d.subkategori_id 
		from app_artikelkonten a 
		left join app_artikel d on a.artikel_id = d.artikel_id 
		left join app_kategori b on d.kategori_id = b.kategori_id
		left join app_subkategori c on d.subkategori_id= c.subkategori_id
		where a.artikel_konten_id=:artikel_konten_id		
		";
        $params = array("artikel_konten_id"=>$artikel_konten_id);
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');
		$data_artikel_konten=array(""=>"");
        if (isset($result)) {
           $data_artikel_konten = $result[0];
        } else {
            $data_artikel_konten = array("info"=>"no data");
        }
        return $data_artikel_konten;	
	}
	
	function loadDataSubKategoriByArtikelId($params){
		 $sql = "select 
					b.subkategori_nama,a.subkategori_id
				from 
					app_artikel a 
				left join app_subkategori b on a.subkategori_id = b.subkategori_id 
				where a.artikel_id=:artikel_id
				UNION ALL select 
				c.subkategori_nama,c.subkategori_id
				from app_subkategori c";
        $params = array("artikel_id"=>$params);
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');
		$lookupkategori=array(""=>"");
        if (isset($result)) {
           $lookupkategori = $result;
        } else {
            $lookupkategori = array("info"=>"no data");
        }
        return $lookupkategori;	
	}
	
	
	function loadJudulArtikelByArtikelId($params){
		 $sql = "select a.judul_artikel from app_artikel a where artikel_id=:artikel_id";
        $params = array("artikel_id"=>$params);
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');
		
        return $result[0];	
	}
	
	
	
	function saveartikel($kategori_nama,$subkategori_nama,$judul_artikel,$judul_konten,$content){
		//echo $kategori_nama.$subkategori_nama.$judul_artikel.$judul_konten.$content;
		$params=array("kategori_nama"=>$kategori_nama,
		              "subkategori_nama"=>$subkategori_nama,
		              "judul_artikel"=>$judul_artikel,
					  "judul_konten"=>$judul_konten,
					  "content"=>$content
		             );
	  $sql="insert into app_artikel 
					(kategori_id,subkategori_id,judul_artikel)
						values
			        (:kategori_nama, :subkategori_nama, :judul_artikel);

			insert into app_artikelkonten
					(user_id,artikel_id,judul_konten_artikel,tanggal_created,konten)
						values
			        (1,currval('app_artikel_artikel_id_seq'),:judul_konten,now(),:content);			
					";
		 $this->mdb->ExecSQL('application', $sql, $params);
	 
	}
	
	function saveArtikelContent($artikel_id,$kategori_nama,$subkategori_nama,$judul_artikel,$judul_konten,$content){
		//echo $kategori_nama.$subkategori_nama.$judul_artikel.$judul_konten.$content;
		$params=array(
		              "artikel_id"      =>$artikel_id,
		              "kategori_nama"   =>$kategori_nama,
		              "subkategori_nama"=>$subkategori_nama,
		              "judul_artikel"   =>$judul_artikel,
					  "judul_konten"    =>$judul_konten,
					  "content"         =>$content
		             );
					 
					 //print_r($params); die();
	          $sql="insert into app_artikelkonten
					(user_id,artikel_id,judul_konten_artikel,tanggal_created,konten)
						values
			        (1,:artikel_id,:judul_konten,now(),:content);			
					";
					
		 $this->mdb->ExecSQL('application', $sql, $params);
	 
	}
	
	function loadDataSubKategori($kategoriid){
        $sql = "select a.* from app_subkategori a where kategori_id=:kategoriid";
        $params = array("kategoriid"=>$kategoriid);
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');
		$lookupsubkategori=array(""=>"");
        if (isset($result)) {
           $lookupsubkategori = $result;
        } else {
            $lookupsubkategori = array("info"=>"no data");
        }
        return $lookupsubkategori;
		
    }
	
	function saveBussinesPlan($params){
	    $sql="insert into app_bussines
			(userid,bussines_role_id,bussines_name,budget_alocation,profit_sharing,bussines_location,bussines_description)
			    values
			(:userid,:bussines_role,:bussines_name,:budget_alocation,:profit_sharing,:bussines_location,:bussines_description);";
					
		 $this->mdb->ExecSQL('application', $sql, $params);
		
	}
	
	function getDataBussinesAll(){
		$params=array(""=>"");
		$sql = "select a.*,b.*,a.userid as invitation_to,c.*,
		c.bussines_role_name,
		case a.bussines_role_id when 1 then 'request to join your bussines' when 2 then 'invitation to be investor in your buzzines' end as invitation_subjek
		from app_bussines a 
		left join sys_users  b on a.userid = b.userid 
		left join app_bussines_role c on a.bussines_role_id=c.bussines_role_id
		";
        //$params = array("artikel_konten_id"=>$artikel_konten_id);
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');	
		return $result;
		
	}
	
	function getDataBussinesByUserId($userid){
		$params=array("userid"=>$userid);
		$sql = "select * from app_bussines where userid=:userid and bussines_role_id=1";
        //$params = array("artikel_konten_id"=>$artikel_konten_id);
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');	
		return $result;
    }
	
	function getDataBussinesByBussinesId($bussines_id){
		$params=array("bussines_id"=>$bussines_id);
		$sql = "select a.*,b.fullname,c.bussines_role_name,
		case a.bussines_role_id 
		when 1 then 'invitation to join Bussines'
		when 2 then 'invitation to be an investor' 
		end as invitation_subject
		from app_bussines a 
		left join sys_users b on a.userid=b.userid 
		left join app_bussines_role c on c.bussines_role_id=a.bussines_role_id
		where 
		bussinesid=:bussines_id 
		       ";
        //$params = array("artikel_konten_id"=>$artikel_konten_id);
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');	
		return $result[0];
    }
	
	function getDataProfile($userid){
		$params=array(
			"userid"=>$userid
		);
		
	}
	
	function getPhotoName($userid){
		$params=array(
			"userid"=>$userid
		);
		//$sqlx = "select currval('app_user_photo_photo_id_seq')as photoName from app_user_photo where userid=:userid";
		$sql = "select max(photo_id) as photoName from app_user_photo where userid=:userid";

        //$params = array("artikel_konten_id"=>$artikel_konten_id);
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');	
		return $result[0];
	}
	function insertUserPhoto($userid){
		$params=array(
			"userid"=>$userid
		);
		$sql="insert into app_user_photo (photo_name,userid)values(currval('app_user_photo_photo_id_seq'),:userid)";
		$this->mdb->ExecSQL('application', $sql, $params);
	}
}

?>
