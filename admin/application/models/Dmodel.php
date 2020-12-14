<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Dmodel extends CI_Model {

	  public function get_all_record($tablename, $condition) {
        $query = $this->db->get_where($tablename, $condition);
        if ($query->num_rows() > 0) {
            return $query->result();
        }
       else {
           return false;
         }
    }
    public function get_data($tablename) {
        $query = $this->db->get($tablename);
        if ($query->num_rows() > 0) {
            return $query->result();
        }
       else {
        return false;
         }
    }
    public function record_insert($tablename, $data) {
        $this->db->insert($tablename, $data);
        return 'true';
    }
    public function delete($tablename,$id, $data)
    {
      $this->db->where('id', $id);
        $this->db->delete($tablename);
        return true;

    }
     public function update($tablename,$id, $data)
    {
      $this->db->where('id', $id);
        $this->db->update($tablename, $data);
        return true;

    }

}