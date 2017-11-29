<!-- Navigation Top_Menu -->


	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					
					
			
						<a class="navbar-brand" href="<?php echo base_url(); ?>">Mustika Store</a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-left">
							
						
							
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<?php  if($this->session->userdata('group')	==	'1'  or $this->session->userdata('group')	==	'2' ): ?>
							
							<li>
							<?php echo anchor('admin/invoices','Daftar Transaksi');?>
							</li>
							
							<li>
							<?php echo anchor('admin/products','Dashboard');?>
							</li>
							<li>
								<?php echo ('<a>'.$this->session->userdata('username').'</a>'); ?>
							</li>
							<li>
								<?php echo anchor('logout','Logout');?>
								<?php else:?>
								<?= redirect(base_url()); ?>
								<?php endif;?>
							</li>		
												
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container -->
			</nav>