<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_users extends CI_Model {
	
	public function check_credential($username,$password)
	{
	
	
	$hasil= $this->db->where('username', $username)
					 ->where('password', $password)
					 ->limit(1)
					 ->get('users');
					 
	if($hasil->num_rows() > 0){
		return $hasil->row();
	}else{
		return array();
	}
}



}
