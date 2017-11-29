<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mustika Store</title>

    <!-- Bootstrap Core CSS -->
	
     <link href="<?php echo base_url('/assets/css/bootstrap.min.css');?>" rel="stylesheet">
	<link href="<?php echo base_url('/assets/css/bootstrap.css');?>" rel="stylesheet">
	<link href="<?php echo base_url('/assets/css/style.css');?>" rel="stylesheet">
	<link href="<?php echo base_url('/assets/css/parallax.css');?>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?php echo base_url('/assets/css/modern-business.css');?>" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?php echo base_url('/assets/font-awesome/css/font-awesome.min.css');?>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<?php echo base_url();?>assets/js/style.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>assets/js/parallax.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<script type="text/javascript" language="javascript" src="<?php echo base_url('/assets/js/jquery-1.10.2.min.js');?>"></script>
	<script type="text/javascript" language="javascript" src="<?php echo base_url('/assets/js/jquery.dataTables.min.js');?>"></script>
	<script type="text/javascript" language="javascript" src="<?php echo base_url('/assets/js/dataTables.bootstrap.js');?>"></script>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('/assets/css/dataTables.bootstrap.css');?>">
</head>

	
	<body>
		
		<!-- Navigation -->
		<?php $this->load->view('layout/navigation')?>
		<!-- Header- dash_menu -->
		<?php $this->load->view('layout/dash_menu')?>
		<!-- Page Content -->
		<div class="container">
			<!-- /.row -->
			<div class="row">
				<!-- body items -->
	
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>
								<i class="fa fa-fw fa-compass"></i> Produk 
							</h4>
						</div><!-- /..panel-heading -->
						<div class="panel-body">
						<div><?= validation_errors()?></div>
						<?=  form_open_multipart('admin/products/create',['class'=>'form-group']) ?>
							<div class="col-sm-4">
								<div class="input-group">
									<div class="input-group-addon">Kategori</div>
									<input type="text" class="form-control" name="pro_name" placeholder="Masukkan Kategori Produk" value="<?= set_value('pro_name') ?>">
								</div>
							</div>
							
							<div class="col-sm-4">
								<div class="input-group">
									<div class="input-group-addon">Nama</div>
									<input type="text" class="form-control" name="pro_title" placeholder="Masukkan Nama Produk" value="<?= set_value('pro_title') ?>">
								</div>
							</div>
						
							<div class="input-group-addon">Deskripsi</div>
							<div class="col-sm-4">
								<div class="input-group col-sm-12">
									<textarea rows="4" class="form-control" name="pro_description" placeholder="Masukkan deskripsi produk , Contoh : Yamaha Classic Guitar GL-1 Top : Spruce, Back & Side/Rib : Meranti, Neck : Nato, Finger Board & Bridge : Sonokeling"><?= set_value('pro_description') ?></textarea>
								</div>
							</div>
							<div class="col-sm-12"><hr></div>
							<div class="col-sm-3">
								<div class="input-group">
									<div class="input-group-addon">Harga</div>
									<input type="text" class="form-control" name="pro_price" placeholder="Masukkan Harga Produk" value="<?= set_value('pro_price') ?>">
									<div class="input-group-addon">$</div>
								</div>
							</div>
							
							<div class="col-sm-3">
								<div class="input-group">
									<div class="input-group-addon">Jumlah Stok</div>
									<input type="text" class="form-control" name="pro_stock" value="<?= set_value('pro_stock') ?>">
								</div>
							</div>
							
							<div class="col-sm-3">
								<div class="input-group">
									<input type="file" name="userfile">
								</div>
							</div>
							
							<div class="col-sm-1">
								<div class="input-group">
									<button type="submit" class="btn btn-primary">Tambah</button>
								</div>
							</div>
							<div class="col-sm-1">
								<div class="input-group">
									
									<?=  anchor('admin/products','Batal',['class'=>'btn btn-danger']) ?>
								</div>
							</div>
							
						
						<?= form_close() ?>
						</div><!-- /..panel-body -->
					</div><!-- /..panel panel-default -->
				</div> 
				
			</div>
			<!-- /.row -->
			<hr>
			
		</div>
		<!-- /.. container -->
		<!-- Footer -->
			<?php $this->load->view('layout/footer')?>
			
		<!-- jQuery -->
		<script src="js/jquery.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>
