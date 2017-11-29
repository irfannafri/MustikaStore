<!DOCTYPE html>
<html lang="en">
<head>

	<title>Mustika Store</title>
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
</body>
	<?php $this->load->view('layout/navigation')?>
	<div class="container">
	<div class="general-top-title">
        <h2>Contacts</h2>
    </div>

		<p>Mustika Store is dedicated to giving you the best customer service possible.</p>
<p>To ensure your visit is efficient, we have provided direct links to a variety of departments and services.</p>
<h3><strong>Corporate &amp; General Inquiries</strong></h3>
<h3><strong>Corporate Offices</strong></h3>
<p itemprop="name">C. F. Mustika &amp; Co., Inc.</p>
<div itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress">
<p itemprop="streetAddress">510 Sycamore Street</p>
<p itemprop="postOfficeBoxNumber">P. O. Box 329</p>
<p><span itemprop="addressLocality">Nazareth</span>, <span itemprop="addressRegion">Pennsylvania</span> <span itemprop="postalCode">18064</span></p>
</div>
<div itemid="https://www.Mustikaguitar.com/1833-shop/" itemscope="" itemtype="http://schema.org/store">
<p>Hours of operation are <span itemprop="openingHours">Monday through Friday, 8:00 AM - 5:00 PM Eastern Time</span><br /> (excluding national US holidays). <a data-id="9616" href="/about/hours-of-operation/" title="Hours of Operation">Holiday/Shutdown Schedule</a></p>
<p>Phone: <a href="tel:610-759-2837">610-759-2837</a><br /> <a href="tel:800-633-2060">800-633-2060</a><br /> Fax: 610-759-5757<br /><a href="mailto:info@Mustikaguitar.com?subject=corporate%20email">Corporate Email</a></p>
<h3><strong>Museum &amp; Tour</strong></h3>
<p>Contact <a href="mailto:guestrelations@Mustikaguitar.com?subject=guest%20relations">Guest Relations</a></p>
<h3><strong><span itemprop="name">1833 Shop</span> &amp; Guitarmaker's Connection</strong></h3>
<p>Contact <a itemprop="email" href="mailto:1833shop@Mustikaguitar.com?subject=1833%20Shop">1833 Shop</a></p>
<div>
<h3><strong>Customer Service &amp; Product Support</strong></h3>
<p>Contact <a data-id="7065" href="/customer-service/" title="Customer Service">Customer Service</a></p>
<h3><strong>Career Opportunities</strong></h3>
<p>Contact <a href="mailto:jobs@Mustikaguitar.com?subject=human%20resources">Human Resources</a><br /> <a data-id="6971" href="/about/employment/" title="Employment">Current Job Listings</a></p>


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
</html>