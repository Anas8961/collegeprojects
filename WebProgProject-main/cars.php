<!doctype html>
<html lang="en">

<head>
  <title>My Cars</title>
  	<!-- Required meta tags -->
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  	<!-- Bootstrap CSS v5.2.1 -->
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
	<link rel="shortcut icon" type="image/x-icon" href="logo.png" />


	<link rel="stylesheet" href="foot.css">
	<link rel="stylesheet" href="head.css">
</head>

<body class="back">
	<header>
		<!-- place navbar here -->
		<?php
			require "head.php";
		?>
	</header>
	<main class="back">
		<div class="container">
			<div class="table-responsive border border-dark rounded-3 px-5">
				<table class="table table-light table-hover">
					<thead class="table-primary">
						<tr heigh="50px">
							<th scope="col" width="35%">Car Name</th>
							<th scope="col" width="45%">Plate Number</th>
							<th scope="col" width="20%"></th>
						</tr>
					</thead>
					<tbody>
						<tr class="">
							<td scope="row" >car1</td>
							<td>carplate1</td>
							<td>
								<input class="btn btn-warning" type="submit" name="edit" value="edit">
								<input class="btn btn-danger" type="submit" name="delete" value="Delete">
							</td>
						</tr>
						<!--all the rows are generated by php code that will retrieve the data ffrom the database and then displayed in a loop with the same html elements-->
						<tr class="">
							<td scope="row">car2</td>
							<td>carplate2</td>
							<td>edit/updatecar</td>
						</tr>
					</tbody>
				</table>
			</div>
			
		</div>
	</main>
	<!--br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br-->
	<footer>
		<!-- place footer here -->
		<?php
            include "foot.html";
        ?>
	</footer>
	<!-- Bootstrap JavaScript Libraries -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
	</script>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
	</script>
</body>

</html>