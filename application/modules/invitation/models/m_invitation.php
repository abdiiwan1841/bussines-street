<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/* Manggu Framework
 * Simple PHP Application Development
 * Kusnassriyanto S. Bahri
 * kusnassriyanto@gmail.com
 * 
 */

class m_invitation extends MY_Model {

    
	function sendInvitation($params){
	    $sql="insert into app_invittation
			(bussines_id,invite_from,invite_to,invitation_date)
			    values
			(:bussines_id,:invitation_from,:invitation_to,now());";
					
		 $this->mdb->ExecSQL('application', $sql, $params);
		
	}
	function realTimeTesting(){		
		$params=array(""=>"");
		$sql = "select count(invitation_id) from app_invittation;";
        //$params = array("artikel_konten_id"=>$artikel_konten_id);
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');	
		return $result[0];	
	}
	
	function getInvitationByUserId($userid){
		$params=array("userid"=>$userid);
				$sql="select (select count(invitation_id)as num_of_invittation 
								from app_invittation 
									where invite_to=:userid and invite_status_id=1
							  ),
					         a.invite_from,
					         a.invitation_date,
							 c.bussines_name,a.bussines_id,
							 case c.bussines_role_id 
							 when 1 then
								'invitation to join Bussines'							 
							 when 2 then 
								'invitation to be an investor'
							 end 
							 as invitation_subject,
							 b.fullname as xinvite_from,
							(select max(x.photo_id) from app_user_photo x where x.userid  = a.invite_from )as dir_name,
							(select max(y.photo_id)  from app_user_photo y where y.userid = a.invite_from )as photo_name
					  from app_invittation a 
				      left join sys_users b on a.invite_from = b.userid 
				      left join app_bussines c on a.bussines_id=c.bussinesid
				      where a.invite_to =:userid and a.invite_status_id=1
				      group by b.fullname,a.invitation_date,c.bussines_name,c.bussinesid,a.bussines_id,a.invite_from
				";
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');	
		return $result;			
	}
	
	function getDataInvittationByBussinesIdAndInviteFrom($bussines_id,$invite_from){
			$params=array("bussines_id"=>$bussines_id,
						  "invite_from"=>$invite_from,
			);
				$sql="select a.invite_from,a.invite_to,a.bussines_id,
					  a.invitation_id,
					  c.fullname as invite_from,
					  d.invittation_status_name,
						case b.bussines_role_id
						when 1 then 'investor'
						when 2 then 'pencari modal'
						end
						as bussines_role,
						b.bussines_name,
						(select max(x.photo_id) from app_user_photo x where x.userid  = a.invite_from )as dir_name,
						(select max(y.photo_id)  from app_user_photo y where y.userid = a.invite_from )as photo_name
						from app_invittation a 
					left join app_bussines b on a.bussines_id = b.bussinesid
					left join sys_users c on a.invite_from = c.userid
					left join app_invittation_status d on a.invite_status_id = d.invite_status_id
					where a.bussines_id=:bussines_id and a.invite_from =:invite_from
				";
        $result = $this->mdb->QueryData('application', $sql, $params, 'record');	
		return $result[0];	
	}
	
	function approveInvittation($params){
	    $sql="update app_invittation set invite_status_id= '2' where invitation_id=:invittation_id ";
		 $this->mdb->ExecSQL('application', $sql, $params);
		
	}
	
}

?>
