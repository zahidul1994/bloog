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

    //for area start
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
                //
            });
    });//$("#district")
    //for area end
	//for area info start
	$("#area").change(function(e) {
        var selected_div = $(this).val();
        if(selected_div == "-1"){return;}
        $.getJSON("classes/populateAreainfo.php",{
                areaid:selected_div,
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
                    dist_opt = v.description;
                });
			   }
                $("#areainfo").html(dist_opt);
                //
            });
    });//$("#district")
    //for area info end
	
	
	});//ready end