<?php
if (isset($_GET['depertment'])) {
		require "database.php";
	$selectstudent = "select * from `student_information` where department_id='" . $_GET['depertment'] . "'";
	$selectstudent = "select * from `student_information` where department_id='" . $_GET['depertment'] . "'";
	$selectstudentQuery = $conn->query($selectstudent);

	if ($selectstudentQuery->num_rows > 0) {
		$row = array();
		while ($r = $selectstudentQuery->fetch_array(MYSQLI_ASSOC)) {
			$row[] = $r;
		}
		echo json_encode(["result" => "1", "records" => $row]);
	} else echo json_encode(["result" => "0"]);

}