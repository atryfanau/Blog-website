<?php

include('includes/header.php');
include('includes/sidebar.php');
?>



          <h1 class="page-header">Posts</h1>

		  <a href="new_post.php" class="btn btn-info btn-lg">Add New</a>
		  
          <div class="table-responsive">
            <form method="post">
			<table class="table table-striped">
              <thead>
                <tr>
					<th>Select</th>
                  <th>Date Posted</th>
                  <th>Title</th>
                  <th>Author</th>
				  <th>Tags</th>
				  <th>Category</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                
               
              
                <tr>
				  <td><input type="checkbox" name='checkbox[]'></td>
                  <td>1,006</td>
                  <td>nibh</td>
                  <td>elementum</td>
				  <td>elementum</td>
				  <td>elementum</td>
                  <td><a href="" class="btn btn-warning">Edit</a></td>
                </tr>
                <tr>
				  <td><input type="checkbox" name='checkbox[]'></td>
                  <td>1,006</td>
                  <td>nibh</td>
                  <td>elementum</td>
				  <td>elementum</td>
				  <td>elementum</td>
                  <td><a href="" class="btn btn-warning">Edit</a></td>
                </tr>
				<tr>
				  <td><input type="checkbox" name='checkbox[]'></td>
                  <td>1,006</td>
                  <td>nibh</td>
                  <td>elementum</td>
				  <td>elementum</td>
				  <td>elementum</td>
                  <td><a href="" class="btn btn-warning">Edit</a></td>
                </tr>
	
              </tbody>
            </table>
			
			<select name="action">
				<option>Delete</option>
				<option>Clone</option>
			</select>
			
			<button type="submit" name="apply" class="btn btn-default">Apply</button>
			
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

