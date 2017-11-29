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

</head>

<body>

    <!-- Navigation Top_Menu -->
    <?php $this->load->view('layout/navigation')?>
    <!-- Header Carousel -->

    <!-- Page Content -->
    <div class="container">

       <hr>
        <!-- /.row -->
        <div class="row">
                        <!-- body items -->
            <!-- load products from table -->
             <div class="col-md-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
						
							<h3>Login  <i class="fa fa-user"></i> :</h3> 
                    </div>
                    <div class="panel-body" width="100px">
						<div class="col-md-12">
							<?= validation_errors() ?>
								<hr>
							<div class="col-md-3"><?= $this->session->flashdata('error') ?></div>
							<div class="col-md-6">
							<?= form_open('login') ?>
								<div class="form-group">
									<label for="username">User Name : </label>
									<input type="text" class="form-control" name="username" >
								</div>
								<div class="form-group">
									<label for="password">Password : </label>
									<input type="password" class="form-control" name="password" >
								</div>
								<div class="form-group">
								<div class="col-md-2"></div>
								<div class="col-md-7">
									<button type="submit" class="btn btn-success">Login</button>
									<?=  anchor(base_url(),'Batal',['class'=>'btn']) ?>
									
									</div>
								<div class="col-md-3">
									<?=  anchor('register','Daftar',['class'=>'btn btn-default']) ?>
								</div>
								</div>
							<?= form_close() ?>
							</div>
							<div class="col-md-3"></div>	
						</div>  
						
                    </div>
					
					
                </div>
            </div>  
			
        </div>

       
    </div>
    <!-- /.container -->
	   <!-- Footer -->
         <?php $this->load->view('layout/footer')?>


    <!-- jQuery -->
    <script src="<?php echo base_url('/assets/js/jquery.js');?>"></script>
	
    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url('/assets/js/bootstrap.min.js');?>"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
