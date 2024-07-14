<?php
class Kabid extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_kabid');
		$this->load->model('m_pengguna');
		$this->load->model('m_kelas');
		$this->load->library('upload');
	}


	function index(){
		$x['kelas']=$this->m_kelas->get_all_kelas();
		$x['data']=$this->m_kabid->get_all_kabid();
		$this->load->view('admin/v_kabid',$x);
	}
	
	function simpan_kabid(){
				$config['upload_path'] = './assets/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 300;
	                        $config['height']= 300;
	                        $config['new_image']= './assets/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $photo_k=$gbr['file_name'];
							$nis_k=strip_tags($this->input->post('k_nis'));
							$nama_k=strip_tags($this->input->post('k_nama'));
							$jenkel_k=strip_tags($this->input->post('k_jenkel'));
							$kelas_k=strip_tags($this->input->post('k_kelas'));

							$this->m_kabid->simpan_kabid($nis_k,$nama_k,$jenkel_k,$kelas_k,$photo_k);
							echo $this->session->set_flashdata('msg','success');
							redirect('admin/kabid');
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/kabid');
	                }
	                 
	            }else{
	            	$nis_k=strip_tags($this->input->post('k_nis'));
					$nama_k=strip_tags($this->input->post('k_nama'));
					$jenkel_k=strip_tags($this->input->post('k_jenkel'));
					$kelas_k=strip_tags($this->input->post('k_kelas'));

					$this->m_kabid->simpan_kabid_tanpa_img($nis_k,$nama_k,$jenkel_k,$kelas_k);
					echo $this->session->set_flashdata('msg','success');
					redirect('admin/kabid');
				}
				
	}
	
	function update_kabid(){
				
	            $config['upload_path'] = './assets/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 300;
	                        $config['height']= 300;
	                        $config['new_image']= './assets/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();
	                        $gambar_k=$this->input->post('k_gambar');
							$path='./assets/images/'.$gambar_k;
							unlink($path);

	                        $photo_k=$gbr['file_name'];
	                        $kode_k=$this->input->post('k_kode');
							$nis_k=strip_tags($this->input->post('k_nis'));
							$nama_k=strip_tags($this->input->post('k_nama'));
							$jenkel_k=strip_tags($this->input->post('k_jenkel'));
							$kelas_k=strip_tags($this->input->post('k_kelas'));

							$this->m_kabid->update_kabid($kode_k,$nis_k,$nama_k,$jenkel_k,$kelas_k,$photo_k);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/kabid');
	                    
	                }else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/kabid');
	                }
	                
	            }else{
							$kode_k=$this->input->post('k_kode');
							$nis_k=strip_tags($this->input->post('k_nis'));
							$nama_k=strip_tags($this->input->post('k_nama'));
							$jenkel_k=strip_tags($this->input->post('k_jenkel'));
							$kelas_k=strip_tags($this->input->post('k_kelas'));

							$this->m_kabid->update_kabid_tanpa_img($kode_k,$nis_k,$nama_k,$jenkel_k,$kelas_k);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/Kabid');
	            } 

	}

	function hapus_kabid(){
		$kode_k=$this->input->post('k_kode');
		$gambar_k=$this->input->post('k_gambar');
		$path='./assets/images/'.$gambar_k;
		unlink($path);
		$this->m_kabid->hapus_kabid($kode_k);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/kabid');
	}

}