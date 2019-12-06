<?php
if (isset($_GET['sessionname'])) {
	require "database.php";
	$selectDistrict = "select * from `departmentname` where session_id='" . $_GET['sessionname'] . "'";
	$selectDistrictResult = $conn->query($selectDistrict);

	if ($selectDistrictResult->num_rows > 0) {
		$row = array();
		while ($r = $selectDistrictResult->fetch_array(MYSQLI_ASSOC)) {
			$row[] = $r;
		}
		echo json_encode(["result" => "1", "records" => $row]);
	} else echo json_encode(["result" => "0"]);

}