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
                    <?php if($history != FALSE):?>
					<?= $this->session->flashdata('message')?>
					<div class="panel-heading">
						
							<h3>Transaksi Saya : </h3> 
                    </div>
					
                    <div class="panel-body" width="100px">
						<div class="col-md-12">
							<hr>
								<div class="col-md-1"></div>
								<div class="col-md-2">
								<h3>Nomor Faktur</h3>
								</div>
								<div class="col-md-2">
								<h3>Tanggal Pembelian</h3>
								</div>
								<div class="col-md-2">
								<h3>Batas Tanggal Bayar</h3>
								</div>
								<div class="col-md-2">
								<h3>Total</h3>
								</div>
								<div class="col-md-3">
								<h3>Status Pembayaran</h3>
								</div>
								
								
								
						</div>  
						
						<?php foreach ($history as $row): ?>
						<div class="col-md-12">
							<hr>
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<?= $row->id ?>
							</div>
							<div class="col-md-2">
								<?= $row->data ?>
							</div>
							<div class="col-md-2">
								<?= $row->due_date ?>
							</div>
							<div class="col-md-2">
								<?= $row->total ?>
							</div>
							<div class="col-md-3">
								
								<?php if($row->status == 'unpaid'):?>
								<code>Belum Bayar</code>
								<?= anchor('customer/payment_confirmation/'.$row->id,'Bayar',array('class'=>'btn btn-primary btn-xs')) ?>
								<?php else:?>
								 <label class="btn btn-success btn-xs active">Sudah Bayar</label>
								<?php endif;?>
							</div>
							
							
							
						</div> 
						<?php endforeach;?>
						
						<div class="col-md-12">
							<hr>
							<div class="col-md-10">
							
							</div>
							<div class="col-md-2">
							<?=  anchor(base_url(),'Halaman Utama',['class'=>'btn btn-default','role'=>'button']) ?>
							</div>
						</div>
					
                    </div>
					<?php else : ?>
					<div class="panel-heading">
						
							<h3>Keranjang Saya :  </h3> 
                    </div>
					<div class="col-md-12">
								
						<div class="col-md-3"></div>
						<div class="col-md-6"><h3>Tidak ada daftar pembelian dari Anda!</h3></div>
						<div class="col-md-3"><?=  anchor(base_url(),'Halaman Utama',['class'=>'btn btn-primary','role'=>'button']) ?></div>
					</div>
					<?php endif?>
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
