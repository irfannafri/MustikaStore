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
        <!-- Product Menu -->
        <?php $this->load->view('layout/product_menu')?>
        <!-- /.row -->
        <div class="row">
          <!-- body items -->
            <!-- load products from table --><?php $send = 'add';?>
			<?php foreach ($comes as $come ) : ?>
			<div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">
						<h6><?=  $come->pro_name  ?> - <?=  $come->pro_title  ?></h6>
                    </div>
                    <div class="panel-body">
							<style>#g {width:400%;height: 120px;}</style>
							<?php
								
								$product_image =['src'	=>'assets/uploads/'.$come->pro_image,
								
								'class'=>'img-responsive img-portfolio img-hover',
								'id'=>'g'
								];
								echo img($product_image);
							?>
						
                        <p id="t"> <?=  $come->pro_description  ?></p>
						<p><code>Price:</code> <?=  $come->pro_price  ?>  <code> Stock:</code> <?=  $come->pro_stock  ?> </p>
                         <?php  if($this->session->userdata('group')	!=	'1'  and $this->session->userdata('group')	!=	'2' ): ?>
						<?=  anchor('home/add_to_cart/'.$come->pro_id.'/'.$send,'Tambahkan ke keranjang',['class'=>'btn btn-success  btn-xs','role'=>'button']) ?>
                       
						<?php else:?>
						<?=  anchor('admin/products/edit/'.$come->pro_id,'Edit',['class'=>'btn btn-success btn-xs']) ?>
						<?=  anchor('admin/products/delete/'.$come->pro_id,'Delete',['class'=>'btn btn-danger btn-xs',
							'onclick'=>'return confirm(\'Are You Sure ? \')'
						]) ?>
						<?php endif;?>
                    </div>
                </div>
            </div> 
			<?php endforeach; ?>
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
