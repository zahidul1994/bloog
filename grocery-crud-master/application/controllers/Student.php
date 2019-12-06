<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Student extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->load->database();
		$this->load->helper('url');

		$this->load->library('grocery_CRUD');
	}

	public function _example_output($output = null)
	{
		$this->load->view('student.php',(array)$output);
	}

	public function offices()
	{
		$output = $this->grocery_crud->render();

		$this->_example_output($output);
	}

	public function index()
	{
		$this->_example_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
	}

	public function showuser()
	{
		try{
			$crud = new grocery_CRUD();
			$crud->set_table('admin_info');
			$crud->set_subject('Office');
			
			//$crud->columns('city','country','phone','addressLine1','postalCode');

			$output = $crud->render();

			$this->_example_output($output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
//add studentsss
	public function addstudent()
	{
			$crud = new grocery_CRUD();

			//$crud->set_theme('datatables');
			$crud->set_table('student_info');
			$crud->columns('first_name','last_name','picture','date_of_birth','father_name','mother_name','contact_no','religion','gender','language','nationality','present_address');
			$crud->unset_fields('updated','created');
			//$crud->columns('first_name','last_name','gender');
			$crud->set_relation('gender','gender','gender_name');
			$crud->set_relation('religion','religion','religion_name');
			//$crud->display_as('officeCode','Office City');
			$crud->set_subject('New student');
			$crud->set_field_upload('picture','assets/uploads/files');
			$crud->required_fields('first_name','picture','date_of_birth','father_name','mother_name','contact_no','religion','gender','language','nationality','present_address');
			//$crud->set_field_upload('file_url','assets/uploads/files');

			$output = $crud->render();

			$this->_example_output($output);
	}
//add teacher
public function teacher_info()
{
		$crud = new grocery_CRUD();

		//$crud->set_theme('datatables');
		$crud->set_table('teacher_info');
		$crud->columns('first_name','last_name','picture','subject','contact_no','religion','gender','language','joining_date','present_address');
		$crud->unset_fields('updated','created');
		//$crud->columns('first_name','last_name','gender');
		$crud->set_relation('gender','gender','gender_name');
		$crud->set_relation('religion','religion','religion_name');
		//$crud->display_as('officeCode','Office City');
		$crud->set_subject('New student');
		$crud->set_field_upload('picture','assets/uploads/files');
		$crud->required_fields('first_name','picture','date_of_birth','father_name','mother_name','contact_no','religion','gender','language','nationality','present_address');
		//$crud->set_field_upload('file_url','assets/uploads/files');

		$output = $crud->render();

		$this->_example_output($output);
}

//Add Class function start
	public function addclass()
	{
			$crud = new grocery_CRUD();

			$crud->set_table('class');
			$crud->columns('class','numeric_name','session_id','shift_id');
			$crud->unset_fields('created','updated');
				 //->display_as('customerName','Name')
				// ->display_as('contactLastName','Last Name');
			$crud->set_subject('New Class');
			$crud->set_relation('session_id','session_table','sessionname');
			$crud->set_relation('shift_id','shift','name');
		
			$output = $crud->render();
			$this->_example_output($output);
	}
//Add Class function end class_section

//Add Class section function start
public function class_section()
{
		$crud = new grocery_CRUD();

		$crud->set_table('class_section');
		$crud->unset_columns('created','updated');
		$crud->unset_fields('created','updated');
			 //->display_as('customerName','Name')
			// ->display_as('contactLastName','Last Name');
		$crud->set_subject('New Class Section');
		 $crud->set_relation('class_id','class','class');
		 $crud->set_relation('section_id','class_section','section_id');
		 $crud->set_relation('teacher_id','teacher_info','first_name ');
	
		$output = $crud->render();
		$this->_example_output($output);
}
//Add mark info function
public function marks_info()
{
		$crud = new grocery_CRUD();

		$crud->set_table('marks_info');
		$crud->unset_columns('created','updated');
		$crud->unset_fields('created','updated');
		$crud->set_subject('Add Mark');
		 $crud->set_relation('exam_id','exams','exam_name');
		 $crud->set_relation('class_id','class','class');
		 $crud->set_relation('section_id','session_table','sessionname');
	
		$output = $crud->render();
		$this->_example_output($output);
}
//Add class_teacher function
public function class_teacher()
{
		$crud = new grocery_CRUD();

		$crud->set_table('class_teacher');
		$crud->unset_columns('created','updated');
		$crud->unset_fields('created','updated');
		$crud->set_subject('Add Mark');
		 $crud->set_relation('teacher_id','teacher_info','first_name');
		// $crud->set_relation('class_id','class','class');
		// $crud->set_relation('section_id','session_table','sessionname');
	
		$output = $crud->render();
		$this->_example_output($output);
}
//add grading_system
public function grading_system()
{
		$crud = new grocery_CRUD();

		$crud->set_table('grading_system');
		$crud->unset_columns('created','updated');
		$crud->unset_fields('created','updated');
		$crud->set_subject('Add Mark');
		 $crud->set_relation('grade','grading_system','grade');
		 $crud->set_relation('grade_point','grading_system','grade_point');
		 $crud->set_relation('max_mark','grading_system','max_mark');
		 $crud->set_relation('min_mark','grading_system','min_mark');
		 //$crud->set_relation('comments','grading_system','comments');
		// $crud->set_relation('class_id','class','class');
		// $crud->set_relation('section_id','session_table','sessionname');
	
		$output = $crud->render();
		$this->_example_output($output);
}
//Add class_schedule  info function
public function class_schedule()
{
		$crud = new grocery_CRUD();
		$crud->set_table('class_schedule');
		$crud->unset_columns('created','updated');
		$crud->unset_fields('created','updated');
		$crud->set_subject('Add Mark');
		 $crud->set_relation('exam_id','exams','exam_name');
		 $crud->set_relation('shift_id','shift','name');
		$crud->set_relation('class_id','class','numeric_name');
		 $crud->set_relation('section_id','section_table','nick_name');
		 $crud->set_relation('teacher_id','teacher_info','first_name');
		 $crud->set_relation('subject_id','subjects','subject_name');
		 $crud->set_relation('starting_time','shift','start_time');
		 $crud->set_relation('ending_time','shift','end_time');
		$output = $crud->render();
		$this->_example_output($output);
}
//Add class_schedule_info end
	public function orders_management()
	{
			$crud = new grocery_CRUD();

			$crud->set_relation('customerNumber','customers','{contactLastName} {contactFirstName}');
			$crud->display_as('customerNumber','Customer');
			$crud->set_table('orders');
			$crud->set_subject('Order');
			$crud->unset_add();
			$crud->unset_delete();

			$output = $crud->render();

			$this->_example_output($output);
	}
//add teacher class_teacher
public function notice()
{
		$crud = new grocery_CRUD();

		//$crud->set_theme('datatables');
		$crud->set_table('notice');
		$crud->columns('name','type','size','created','updated');
		$crud->unset_fields('updated','created');
		//$crud->columns('first_name','last_name','gender');
		//$crud->set_relation('gender','gender','gender_name');
		//$crud->set_relation('religion','religion','religion_name');
		//$crud->display_as('officeCode','Office City');
		$crud->set_subject('New student');
		$crud->set_field_upload('size','assets/uploads/files');
		//$crud->required_fields('first_name','picture','date_of_birth','father_name','mother_name','contact_no','religion','gender','language','nationality','present_address');
		//$crud->set_field_upload('file_url','assets/uploads/files');

		$output = $crud->render();

		$this->_example_output($output);
}


	public function products_management()
	{
			$crud = new grocery_CRUD();

			$crud->set_table('products');
			$crud->set_subject('Product');
			$crud->unset_columns('productDescription');
			$crud->callback_column('buyPrice',array($this,'valueToEuro'));

			$output = $crud->render();

			$this->_example_output($output);
	}

	public function valueToEuro($value, $row)
	{
		return $value.' &euro;';
	}

	public function film_management()
	{
		$crud = new grocery_CRUD();

		$crud->set_table('film');
		$crud->set_relation_n_n('actors', 'film_actor', 'actor', 'film_id', 'actor_id', 'fullname','priority');
		$crud->set_relation_n_n('category', 'film_category', 'category', 'film_id', 'category_id', 'name');
		$crud->unset_columns('special_features','description','actors');

		$crud->fields('title', 'description', 'actors' ,  'category' ,'release_year', 'rental_duration', 'rental_rate', 'length', 'replacement_cost', 'rating', 'special_features');

		$output = $crud->render();

		$this->_example_output($output);
	}

	public function film_management_twitter_bootstrap()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('twitter-bootstrap');
			$crud->set_table('film');
			$crud->set_relation_n_n('actors', 'film_actor', 'actor', 'film_id', 'actor_id', 'fullname','priority');
			$crud->set_relation_n_n('category', 'film_category', 'category', 'film_id', 'category_id', 'name');
			$crud->unset_columns('special_features','description','actors');

			$crud->fields('title', 'description', 'actors' ,  'category' ,'release_year', 'rental_duration', 'rental_rate', 'length', 'replacement_cost', 'rating', 'special_features');

			$output = $crud->render();
			$this->_example_output($output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}

	function multigrids()
	{
		$this->config->load('grocery_crud');
		$this->config->set_item('grocery_crud_dialog_forms',true);
		$this->config->set_item('grocery_crud_default_per_page',10);

		$output1 = $this->offices_management2();

		$output2 = $this->employees_management2();

		$output3 = $this->customers_management2();

		$js_files = $output1->js_files + $output2->js_files + $output3->js_files;
		$css_files = $output1->css_files + $output2->css_files + $output3->css_files;
		$output = "<h1>List 1</h1>".$output1->output."<h1>List 2</h1>".$output2->output."<h1>List 3</h1>".$output3->output;

		$this->_example_output((object)array(
				'js_files' => $js_files,
				'css_files' => $css_files,
				'output'	=> $output
		));
	}

	public function offices_management2()
	{
		$crud = new grocery_CRUD();
		$crud->set_table('offices');
		$crud->set_subject('Office');

		$crud->set_crud_url_path(site_url(strtolower(__CLASS__."/".__FUNCTION__)),site_url(strtolower(__CLASS__."/multigrids")));

		$output = $crud->render();

		if($crud->getState() != 'list') {
			$this->_example_output($output);
		} else {
			return $output;
		}
	}


	public function str()
	{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('student_info');
			//$crud->columns('first_name','last_name','picture ','date_of_birth ','gender ','father_name ','mother_name');
			$crud->fields('first_name','last_name','picture ','date_of_birth ','gender_name  ','father_name ','mother_name');
			$crud->set_subject('New Student');
			
			$crud->set_relation('gender_name ','student_info','gender_name');
			$output = $crud->render();
			//$crud->set_field_upload('picture','assets/uploads/files');
			$this->_example_output($output);
	}


	public function employees_management2()
	{
		$crud = new grocery_CRUD();

		$crud->set_theme('datatables');
		$crud->set_table('employees');
		$crud->set_relation('officeCode','offices','city');
		$crud->display_as('officeCode','Office City');
		$crud->set_subject('Employee');

		$crud->required_fields('lastName');

		$crud->set_field_upload('file_url','assets/uploads/files');

		$crud->set_crud_url_path(site_url(strtolower(__CLASS__."/".__FUNCTION__)),site_url(strtolower(__CLASS__."/multigrids")));

		$output = $crud->render();

		if($crud->getState() != 'list') {
			$this->_example_output($output);
		} else {
			return $output;
		}
	}

	public function customers_management2()
	{
		$crud = new grocery_CRUD();

		$crud->set_table('customers');
		$crud->columns('customerName','contactLastName','phone','city','country','salesRepEmployeeNumber','creditLimit');
		$crud->display_as('salesRepEmployeeNumber','from Employeer')
			 ->display_as('customerName','Name')
			 ->display_as('contactLastName','Last Name');
		$crud->set_subject('Customer');
		$crud->set_relation('salesRepEmployeeNumber','employees','lastName');

		$crud->set_crud_url_path(site_url(strtolower(__CLASS__."/".__FUNCTION__)),site_url(strtolower(__CLASS__."/multigrids")));

		$output = $crud->render();

		if($crud->getState() != 'list') {
			$this->_example_output($output);
		} else {
			return $output;
		}
	}

}
