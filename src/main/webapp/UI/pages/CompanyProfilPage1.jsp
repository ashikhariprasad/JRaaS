<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>Job Recommendation as a Service</title>
	
	<link href="<c:url value="/resources/bootstrap3/css/bootstrap.css" />" rel="stylesheet" />
	<link href="<c:url value="/resources/assets/css/get-shit-done.css" />" rel="stylesheet" />  
	<link href="<c:url value="/resources/assets/css/demo.css" />" rel="stylesheet" /> 
	
	<!--     Font Awesome     -->
	<link href="<c:url value="/resources/bootstrap3/css/font-awesome.css" />" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>
  <style>
	.main-wrap {
    position: relative;
    top: 200px;
    bottom: 50px;
	height: 100%
    width: 100%;
    overflow: auto;
}

.content {
    display: table-cell;
    height: 100%;
    width: 100%;
    vertical-align: middle;
}
  </style>
</head>
<body>
	<div class="container">
		<div id="navbar">
			<nav class="navbar navbar-ct-blue" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">JRaaS</a>
					</div>
					
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="#">Inbox</a></li>
							<li><a href="#">Profile</a></li>
							<li><a href="#">Jobs</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right" style="padding-right:20px;">
							<li><a href="#">userName</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="main-wrap">
		<div class="container" style="display:table; width:100%; height:100%;">
		<div class="content">
			
			<table>
				<tr><h1>COMPANY NAME</h1></tr>
				<tr><td><label for="logo">Company Logo: </label></td>
       				 <td><input type="text" id="logo" name="logo" value="" placeholder="" required="required" autofocus="autofocus" /></td></tr>
         		<tr><td><label for="url">URL: </label></td>
        			<td><input type="text" id="url" name="url" value="" placeholder="http://companyName.com" required="required" autofocus="autofocus" /></td></tr>
        		<tr><td><label for="twitter">Twitter: </label></td>
       				<td><input type="text" id="twitter" name="twitter" value="" /></td></tr>
        		<tr><td><label for="size">Company size: <span class="required">*</span></label></td>
        			<td><input type="text" id="size" name="size" value="" placeholder="" required="required" /></td></tr>
         
				<tr><td><button class="btn btn-primary btn-lg">Next</button></td></tr>
			</table>
			
			
		</div>
		</div>
		</div>
	</div>
</body>

	<script src="<c:url value="/resources/jquery/jquery-1.10.2.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/assets/js/jquery-ui-1.10.4.custom.min.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/bootstrap3/js/bootstrap.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/assets/js/gsdk-checkbox.js" />"></script>
	<script src="<c:url value="/resources/assets/js/gsdk-radio.js" />"></script>
	<script src="<c:url value="/resources/assets/js/gsdk-bootstrapswitch.js" />"></script>
	<script src="<c:url value="/resources/assets/js/get-shit-done.js" />"></script>		
	<script src="<c:url value="/resources/assets/js/custom.js" />"></script>
	
</html>
