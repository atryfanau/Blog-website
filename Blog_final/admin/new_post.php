<?php
include('includes/config.php');
include('includes/db.php');
include('includes/header.php');
include('includes/sidebar.php');

if(isset($_POST['add_post'])) {
	$title = mysqli_real_escape_string($db, $_POST['title']);
	$author = mysqli_real_escape_string($db, $_POST['author']);
	$category = mysqli_real_escape_string($db, $_POST['category']);
	$body = mysqli_real_escape_string($db, $_POST['body']);
	$keywords = mysqli_real_escape_string($db, $_POST['keywords']);

	$d = getDate();
	$date = "$d[month] $d[mday], $d[year]";

	$query = "INSERT INTO posts (title, author, category, body, keywords, date)
	VALUE ('$title', '$author', '$category', '$body', '$keywords', '$date')";

	$db->query($query);

}

$cats = $db->query("SELECT * FROM categories");
?>



          <h1 class="page-header">Add New Post</h1>

          <div class="table-responsive">
            <form method="post">
				<div class="form-group">
					<label>
						Post Title : 
					</label>
					<input class="form-control" name="title" >
				</div>
				
				<div class="form-group">
					<label>
						Post Author : 
					</label>
					<input class="form-control" name="author" >
				</div>
				<div class="form-group">
					<label>
						Post Category : 
					</label>
					<select name="category" class="form-control">
					<?php while ($row = $cats->fetch_assoc()) { ?>

						<option value="<?php echo $row['id']; ?>"><?php echo $row['text']; ?></option>
					
					<?php } ?>
					</select>
				</div>
				
				<div class="form-group">
					<label>
						Post Body : 
					</label>
					<textarea name="body" class="form-control" ></textarea>
				</div>
				
				<div class="form-group">
					<label>
						Post Keywords : 
					</label>
					<input class="form-control" name="keywords" >
				</div>
				
				
				
			<button type="submit" name="add_post" class="btn btn-default">Add Post</button>
			
			</form>
			
			
			
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
  </body>
</html>

