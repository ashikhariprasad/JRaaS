<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<script src="<c:url value="/resources/jquery/jquery-1.10.2.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/assets/js/jquery-ui-1.10.4.custom.min.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/bootstrap3/js/bootstrap.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/assets/js/gsdk-checkbox.js" />"></script>
	<script src="<c:url value="/resources/assets/js/gsdk-radio.js" />"></script>
	<script src="<c:url value="/resources/assets/js/gsdk-bootstrapswitch.js" />"></script>
	<script src="<c:url value="/resources/assets/js/get-shit-done.js" />"></script>		
	<script src="<c:url value="/resources/assets/js/custom.js" />"></script>
  <style>
	.main-wrap {
    position: relative;
    top: 200px;
    bottom: 50px;
	
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
							<li><a href="#">Profile</a></li>
							<li><a href="#">Messages</a></li>
							<li><a href="javascript:void(0);" data-toggle="search" class="hidden-xs"><i class="fa fa-search"></i>Find a Job</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right" style="padding-right:20px;">
							<!-- <li style="padding-right: 5px;"><button href="#" class="btn btn-round btn-default">Register</button></li> -->
							<li><button href="#" class="btn btn-round btn-default">Login</button></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="main-wrap">
		<div class="container" style="display:table; width:100%; height:100%;">
		<div class="content">
			<div class="col-md-2 col-md-offset-3">
			<button id="candidate_btn" class="btn btn-primary btn-lg">Candidate</button>
			</div>
			<div class="col-md-1 col-md-offset-1">
			<button id="company_btn" class="btn btn-primary btn-lg">Company</button>
			</div>
		</div>
		</div>
		</div>
	</div>
</body>

<script>
	$('#company_btn').click(function () {
		window.location.href = "companyLogin";
	});
</script>
	
	
</html>