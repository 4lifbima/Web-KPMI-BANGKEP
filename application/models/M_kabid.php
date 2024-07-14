<?php 
class M_kabid extends CI_Model{

	function get_all_kabid(){
		$hsl=$this->db->query("SELECT tbl_kabid.*,kelas_nama FROM tbl_kabid JOIN tbl_kelas ON kabid_kelas_id=kelas_id");
		return $hsl;
	}

	function simpan_kabid($nis_k,$nama_k,$jenkel_k,$kelas_k,$photo_k){
		$hsl=$this->db->query("INSERT INTO tbl_kabid (kabid_nis,kabid_nama,kabid_jenkel,kabid_kelas_id,kabid_photo) VALUES ('$nis_k','$nama_k','$jenkel_k','$kelas_k','$photo_k')");
		return $hsl;
	}
	function simpan_kabid_tanpa_img($nis_k,$nama_k,$jenkel_k,$kelas_k){
		$hsl=$this->db->query("INSERT INTO tbl_kabid (kabid_nis,kabid_nama,kabid_jenkel,kabid_kelas_id) VALUES ('$nis_k','$nama_k','$jenkel_k','$kelas_k')");
		return $hsl;
	}

	function update_kabid($kode_k,$nis,$nama_k,$jenkel_k,$kelas_k,$photo_k){
		$hsl=$this->db->query("UPDATE tbl_kabid SET kabid_nis='$nis',kabid_nama='$nama_k',kabid_jenkel='$jenkel_k',kabid_kelas_id='$kelas_k',kabid_photo='$photo_k' WHERE kabid_id='$kode_k'");
		return $hsl;
	}
	function update_kabid_tanpa_img($kode_k,$nis,$nama_k,$jenkel_k,$kelas_k){
		$hsl=$this->db->query("UPDATE tbl_kabid SET kabid_nis='$nis',kabid_nama='$nama_k',kabid_jenkel='$jenkel_k',kabid_kelas_id='$kelas_k' WHERE kabid_id='$kode_k'");
		return $hsl;
	}
	function hapus_kabid($kode_k){
		$hsl=$this->db->query("DELETE FROM tbl_kabid WHERE kabid_id='$kode_k'");
		return $hsl;
	}

	function kabid(){
		$hsl=$this->db->query("SELECT tbl_kabid.*,kelas_nama FROM tbl_kabid JOIN tbl_kelas ON kabid_kelas_id=kelas_id");
		return $hsl;
	}
	function kabid_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT tbl_kabid.*,kelas_nama FROM tbl_kabid JOIN tbl_kelas ON kabid_kelas_id=kelas_id limit $offset,$limit");
		return $hsl;
	}

}