<?php 
use App\Database;
$conn=new Database();
$conn->table_name = "session_table";
$id=data;
$result=$conn->get_all_where('sessionname = ' . $id);
if ($r=$result->num_rows > 0) {
	
		$row[] = $r;
	
	echo json_encode($row);
} else echo json_encode(["result" => "no data found"]);	

?>