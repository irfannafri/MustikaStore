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
		<?php $this->load->view('layout/dash_navigation')?>
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
							<h4><i class="fa fa-fw fa-compass"></i> Anggota</h4>
							
						</div>
						<div class="panel-body">
						<?php foreach ($members as $member ) : ?>
						<div class="col-md-12">
						<hr>
							<div class="col-md-1">
								
							</div>
							<div class="col-md-4">
								<h4>ID User</h4>
									<?=  $member->usr_id  ?>
							</div>
							
							<div class="col-md-5">
								<h4>Username </h4>
								<?=  $member->usr_name  ?>
							</div>
							
						

							<div class="col-md-2">
								
							
								<?php  if($this->session->userdata('group')	==	'1' ): ?>
								<h4>Status User</h4>
								<?php if ($member->usr_group == '2' ):?>
								<?php  echo "C-administrator<br>"  ;?>
								<?php endif;?>
								<?php if ($member->usr_group == '3' ):?>
								<?php  echo "Members<br>"  ;?>
								<?php endif;?>
								
								<?php if ($member->usr_id == '1' ):?>
								<?php echo "administrator"?>
								<?php else:?>
								<?php if ($member->stuts == '1' and $member->usr_id != '1' ):?>
								
								
								<?=  anchor('admin/products/disable_usr/'.$member->usr_id,'Hapus ',['class'=>'btn btn-danger btn-xs ',
									'onclick'=>'return confirm(\'Apakah Anda yakin menonaktifkan pengguna ini ? \')'
								])  ?>
								
								<?=  anchor('#','Aktif',['class'=>'btn btn-success btn-xs disabled '
								])  ?>
								<?php else:?>
								<?=  anchor('#','Hapus ',['class'=>'btn btn-danger btn-xs disabled'])  ?>
								
								<?=  anchor('admin/products/active_usr/'.$member->usr_id,'Aktif ',['class'=>'btn btn-success btn-xs ',
									'onclick'=>'return confirm(\'Apakah Anda yakin menonaktifkan pengguna ini ? \')'
								])  ?>
								<?php endif;?>
								<?php endif;?>
								<?php endif;?>
								
							</div>
						
						</div>
						<?php endforeach; ?>	
						</div>
					</div>
				</div> 
				
			</div>
			<!-- /.row -->
			
			<!-- Features Section -->
			
			<!-- /.row -->
			<hr>
			
			
			
		</div>
		<!-- /.container -->
		<!-- Footer -->
			<?php $this->load->view('layout/footer')?>
		
		<!-- jQuery -->
		<script src="js/jquery.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>
		
		<!-- Script to Activate the Carousel -->
		
		
	</body>
	
</html>
