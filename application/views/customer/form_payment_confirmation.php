<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    
    <title>Mustika Store </title>

   
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
								<h3>Konfirmasi Pembayaran :</h3>  
						</div>
						<div class="panel-body" width="100px">
							<div class="col-md-12">
							
								<hr>
								<div class="col-md-3"><?= validation_errors() ?>
													  <?= $this->session->flashdata('error') ?>
								</div>
								
							<div class="col-md-6">
							<?= form_open('customer/payment_confirmation/') ?>
								<div class="form-group">
									<label for="invoice_input">Nomor Faktur : </label>
									<input type="text" class="form-control" name="invoice_id_input" value=<?=( $invoice_id != 0 ? $invoice_id:'')?> >
								</div>
								<div class="form-group">
									<label for="amount">Jumlah Transfer : </label>
									<input type="text" class="form-control" name="amount_input" >
								</div>
								<div class="form-group">
								<div class="col-md-2"></div>
								<div class="col-md-7">
									<button type="submit" class="btn btn-success">Bayar</button>
									<?=  anchor(base_url('index.php/home/produk'),'Batal',['class'=>'btn']) ?>
									
									</div>
								<div class="col-md-3">
									<?=  anchor('customer/shopping_history','Transaksi saya',['class'=>'btn btn-default']) ?>
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
    <!-- /.container -->
</div>
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
