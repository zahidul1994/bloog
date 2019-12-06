<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
</head>
<body>
	<div>
		<a href='<?php echo site_url('Student/showuser')?>'>Admin</a> |
		<a href='<?php echo site_url('Student/addstudent')?>'>Add Student</a> |
		<a href='<?php echo site_url('Student/teacher_info')?>'>Add Teacher</a> |
		<a href='<?php echo site_url('Student/class_section')?>'>Add Class Section</a> |
		<a href='<?php echo site_url('Student/addclass')?>'>Add Class</a> |
		<a href='<?php echo site_url('Student/str')?>'>Student</a> |
		<a href='<?php echo site_url('Student/marks_info')?>'>Exam Mark</a> |
		<a href='<?php echo site_url('Student/grading_system')?>'>Exam Gradind system</a> |
		<a href='<?php echo site_url('Student/class_teacher')?>'>class_teacher</a> |
		<a href='<?php echo site_url('Student/notice')?>'>Notice</a> |
		<a href='<?php echo site_url('Student/totalmark')?>'>Exam Mark Details</a> |
		<a href='<?php echo site_url('Student/class_schedule')?>'>Class Schedule</a> |
		
		
	</div>
	<div style='height:20px;'></div>  
    <div style="padding: 10px">
		<?php echo $output; ?>
    </div>
    <?php foreach($js_files as $file): ?>
        <script src="<?php echo $file; ?>"></script>
    <?php endforeach; ?>
</body>
</html>
