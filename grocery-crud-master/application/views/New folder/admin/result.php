<?php
	require "src/database.php";
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Bootstrap Material Admin by Bootstrapious.com</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    
    <!-- Font Awesome CSS-->
    
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../assets/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../assets/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="../assets/img/favicon.ico">
          <style>
          .singleImageEdit:hover{
            border-bottom:1px solid gray;
          }
        .singleImageEdit span.remove{
          display:inline-block;
          
        }
        </style>
  </head>
  <body>
    <div class="page">
      <?php include "partials/mainnavbar.php"; ?>
      <div class="page-content d-flex align-items-stretch"> 
        <?php include "partials/side-navbar.php";?>
        <div class="content-inner container">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="text-center p-2">Add Results On databae</h2>
            <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="get"> <!--form area start-->
<div class="form-row"> <!-- form inline-->

<div class="col">
    <label for="classyear">Select Exam</label>
        <select  class="form-control" id="examname" name="examname" required>
      <option value="-1">Select exam</option>
      </select>
       </div><!--col-->
       <div class="col">
    <label for="sessionname">Select Session</label>
        <select  class="form-control" id="sessionname" name="sessionname" required>
      <option value="-1">Select Session</option>
      </select>
       </div><!--col-->
       <div class="col">
    <label for="depertment"> Depertment Name</label>
        <select  class="form-control" id="depertment" name="depertment" required>
      <option value="-1">Select Depetment</option>
      </select>
       </div><!--col-->
           
  </div><br>
  <div class="form-row"> <!-- form inline-->

<div class="col">
    <label for="studentname">Student Name</label>
        <select  class="form-control" id="studentname" name="studentname" required>
      <option value="-1">Select Student</option>
      </select>
       </div><!--col-->
       <div class="col">
    <label for="subjectname">Select Subject</label>
        <select  class="form-control" id="subjectname" name="subjectname" required>
      <option value="-1">Select Subject</option>
      </select>
       </div><!--col-->
       <div class="col">
    <label for="depertment"> Depertment Name</label>
        <select  class="form-control" id="depertment" name="depertment" required>
      <option value="-1">Select Depetment</option>
      </select>
       </div><!--col-->
           
  </div><br>
  </form>
      </div>
        <div id="articlesContainer" class="table-responsive">
<table class="table table-hover">
  <thead>
  <tr>
    <th>ID</th>
    <th>Title</th>
    <th>Details</th>
    <th>User</th>
    <th>Tags</th>
    <th>Status</th>
    <th>Create time</th>
    <th>Action</th>
  </tr>
  </thead>
  <tbody>
  </tbody>
</table>
            </div>
            <div id="paginationContainer"></div>
                 <?php include "partials/footer.php"; ?>
        </div>
      </div>
    </div>
    <!-- JavaScript files-->    
    <script src="../assets/js/jquery-3.3.1.min.js"></script>
         <script src="../assets/js/bootstrap.bundle.min.js"></script>
        <!-- Main File-->
    
    <script>
    $(document).ready(function(){
	//for division start
	$.getJSON("src/examname.php",function(data){
		//var d = $.parseJSON(data);
		//console.log(data);
		var div_opt = "";
		$.each(data,function(k,v){
			div_opt += "<option value='"+v.exam_id+"'>"+v.yearname+"</option>";
			});
		$("#examname").append(div_opt);	
		});//$.getJSON
		//for division end
	
	//for district start
	$("#examname").change(function(e) {		
        var selected_div = $(this).val();
		if(selected_div == "-1"){return;}
		$.getJSON("src/session.php",{
			examname:selected_div,
			rand:Math.random()
			},
			function(data){
				console.log(data);
				let dist_opt;
				if(data.result == "0"){
					dist_opt = "<option value='-1'>Select</option>";
				}
				else{
				dist_opt = "<option value='-1'>Select</option>";
		$.each(data.records,function(k,v){
			dist_opt += "<option value='"+v.session_id+"'>"+v.session_name+"</option>";
			});
				}
		$("#sessionname").html(dist_opt);				
				//
				});
    });//$("#division")
	//for disrtict end

    //for Student name start
    $("#sessionname").change(function(e) {
        var selected_div = $(this).val();
        if(selected_div == "-1"){return;}
        $.getJSON("src/department.php",{
          sessionname:selected_div,
                rand:Math.random()
            },
            function(data){
               console.log(data);
			   let dist_opt;
			   if(data.result == '0'){
				dist_opt = "<option value='-1'>No data Found</option>";
			   }
			   else{
                dist_opt = "<option value='-1'>Select</option>";

                $.each(data.records,function(k,v){
                    dist_opt += "<option value='"+v.department_id+"'>"+v.department_name+"</option>";
                });
			   }
                $("#depertment").html(dist_opt);
                
            });
    });
    //for area end
	
    //for department start
    $("#depertment").change(function(e) {
        var selected_div = $(this).val();
        if(selected_div == "-1"){return;}
        $.getJSON("src/studentname.php",{
          depertment:selected_div,
                rand:Math.random()
            },
            function(data){
               console.log(data);
			   let dist_opt;
			   if(data.result == '0'){
				dist_opt = "<option value='-1'>No data Found</option>";
			   }
			   else{
                dist_opt = "<option value='-1'>Select</option>";

                $.each(data.records,function(k,v){
                    dist_opt += "<option value='"+v.sid+"'>"+v.fname+"</option>";
                });
			   }
                $("#studentname").html(dist_opt);
                
            });
    });
    //for stduent name end
    
    //for subject name start
    $("#studentname").change(function(e) {
        var selected_div = $(this).val();
        if(selected_div == "-1"){return;}
        $.getJSON("src/department.php",{
          studentname:selected_div,
                rand:Math.random()
            },
            function(data){
               console.log(data);
			   let dist_opt;
			   if(data.result == '0'){
				dist_opt = "<option value='-1'>No data Found</option>";
			   }
			   else{
                dist_opt = "<option value='-1'>Select</option>";

                $.each(data.records,function(k,v){
                    dist_opt += "<option value='"+v.department_id+"'>"+v.department_name+"</option>";
                });
			   }
                $("#depertment").html(dist_opt);
                
            });
    });
    //for area end
	
    //for department start
    $("#depertment").change(function(e) {
        var selected_div = $(this).val();
        if(selected_div == "-1"){return;}
        $.getJSON("src/studentname.php",{
          depertment:selected_div,
                rand:Math.random()
            },
            function(data){
               console.log(data);
			   let dist_opt;
			   if(data.result == '0'){
				dist_opt = "<option value='-1'>No data Found</option>";
			   }
			   else{
                dist_opt = "<option value='-1'>Select</option>";

                $.each(data.records,function(k,v){
                    dist_opt += "<option value='"+v.sid+"'>"+v.fastname+"</option>";
                });
			   }
                $("#studentname").html(dist_opt);
                
            });
    });
    //for area end
	});//ready end
</script>
</div>
</body>
</html>