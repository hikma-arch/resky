<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
	<body class="hold-transition skin-blue layout-top-nav">
		<div class="wrapper">

			<?php include 'includes/navbar.php'; ?>
			
			<div class="content-wrapper">
				<div class="container">

				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-sm-9">
							<h1 class="page-header">KERANJANG ANDA</h1>
							<div class="box box-solid">
								<div class="box-body">
								<table class="table table-bordered">
									<thead>
										<th></th>
										<th>Foto</th>
										<th>Nama</th>
										<th>Harga</th>
										<th width="20%">Kuantitas</th>
										<th>Subtotal</th>
									</thead>
									<tbody id="tbody">
									</tbody>
								</table>
								</div>
							</div>
							<?php
								if(isset($_SESSION['user'])){
									echo "
										<div id='paypal-button'></div>
									";
								}
								else{
									echo "
										<h4>Anda perlu <a href='login.php'>Login</a> jika akan melakukan pembayaran.</h4>
									";
								}
							?>
						</div>
						<div class="col-sm-3">
							<?php include 'includes/sidebar.php'; ?>
						</div>
					</div>
				</section>
				
				</div>
			</div>
			<?php $pdo->close(); ?>
			<?php include 'includes/footer.php'; ?>
		</div>

		<?php include 'includes/scripts.php'; ?>


	</body>
</html>