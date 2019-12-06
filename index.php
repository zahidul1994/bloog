<?php
session_start();
require __DIR__ . '/vendor/autoload.php';
use App\Database;
$conn = new Database();


	$pagesize = 12;
	$recordstart = ((isset($_GET['page'])) ? $_GET['page'] : 1);
	$articleStart = ($recordstart-1)*$pagesize;
	//echo $recordstart; exit;
	$totalArticleQuery = "select * from articles where status = '1'";
//	$totalArticleQuery = "SELECT `articles`.*,`images`.`imagename`,COUNT(comments.article_id) AS 'totalcomment'
//FROM `articles`
//LEFT JOIN  comments ON articles.id = comments.article_id
//LEFT JOIN `images` ON `articles`.`id` = `images`.`article_id`
//where `articles`.`status`='1'
//group by articles.id
//order by `articles`.`created` desc";
	$totalArticleResult = $conn->db->query($totalArticleQuery);
	$totalArticle = $totalArticleResult->num_rows;
	$totalPages = ceil($totalArticle/$pagesize);
	//echo $totalPages; exit;


$conn->table_name = "articles";
$articles = $conn->get_all_paged($articleStart,$pagesize);

$conn->table_name = "categories";
$allcats = $conn->get_all();
?>
<?php require "partials/header.php";?>
    </head>
	<body>
	
	<?php		
			require("partials/mainmenu.php");		
	?>

		<!-- section -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">	
					<!-- post -->
					<div class="col-md-6">
						<div class="post post-thumb">
							<a class="post-img" href="blog-post.html"><img src="assets/img/post-1.jpg" alt=""></a>
							<div class="post-body">
								<div class="post-meta">
									<a class="post-category cat-2" href="category.html">JavaScript</a>
									<span class="post-date">March 27, 2018</span>
								</div>
								<h3 class="post-title"><a href="blog-post.html">Chrome Extension Protects Against JavaScript-Based CPU Side-Channel Attacks</a></h3>
							</div>
						</div>
					</div>
					<!-- /post -->

					<!-- post -->
					<div class="col-md-6">
						<div class="post post-thumb">
							<a class="post-img" href="blog-post.html"><img src="assets/img/post-2.jpg" alt=""></a>
							<div class="post-body">
								<div class="post-meta">
									<a class="post-category cat-3" href="category.html">Jquery</a>
									<span class="post-date">March 27, 2018</span>
								</div>
								<h3 class="post-title"><a href="blog-post.html">Ask HN: Does Anybody Still Use JQuery?</a></h3>
							</div>
						</div>
					</div>
					<!-- /post -->
				</div>
				<!-- /row -->

				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="section-title">
							<h2>Recent Posts</h2>
						</div>
					</div>
					<div class="col-md-12">
						<div class="section-title">
							<h2>All Categories:</h2>
							<ul class="list-unstyled list-inline">
							<?php
                            foreach ($allcats as $cat) {
                                if ($cat['id'] != '1') {
                                    echo '<li class="list-inline-item"><a href="category.php?id='.$cat['id'].'">'.$cat['name'].'</a></li>';
                                }
                            }
							?>
							</ul>
						</div>
					</div>

					<!-- post -->
					<?php
foreach ($articles as $key => $singlearticle) {
	echo '<div class="col-md-4"><div class="post"><a class="post-img" href="blog-post.php?id='.$singlearticle['id'].'"><img src="assets/articleimages/'.$singlearticle['imagename'].'" alt=""></a><div class="post-body"><div class="post-meta"><a class="post-category cat-1" href="category.html">Web Design</a><span class="post-date">March 27, 2018</span></div><h3 class="post-title"><a href="blog-post.php?id='.$singlearticle['id'].'">'.$singlearticle['title'].'</a></h3></div></div></div>';
}
					?>
					<!-- /post -->

					
				
				<!-- /row -->
				<div class="clearfix"></div>
				
				<!--pangenation start-->
		 
<nav aria-label="pagination" class="text-center">
  <ul class="pagination">
  <li class="page-item">
      <a class="page-link" href="?page=1" tabindex="-1">First</a>
    </li>
    <li class="page-item <?php if($recordstart==1) echo "disabled"; ?>">
      <a class="page-link" href="?page=<?php echo $recordstart-1; ?>" tabindex="-1">Previous</a>
    </li>
<?php
for ($i=1; $i <= $totalPages ; $i++) {
    if (abs($recordstart-$i) <= 3) {
        if ($recordstart == $i) {
            echo '<li class="page-item active"><a class="page-link" href="?page='.$i.'">'.$i.'</a></li>';
        } else {
            echo '<li class="page-item"><a class="page-link" href="?page='.$i.'">'.$i.'</a></li>';
        }
    }
}

?>  
	  
	  <li class="page-item <?php if($recordstart==$totalPages) echo "disabled"; ?>" >
      <a class="page-link" href="?page=<?php echo $recordstart+1; ?>">Next</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="?page=<?php echo $totalPages; ?>">Last</a>
    </li>
  </ul>
</nav>
</div>
		 
<!--		 pagenation end-->
		 


		<?php require "partials/footer.php";?>
	</body>
</html>
