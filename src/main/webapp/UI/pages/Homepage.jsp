<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Job Recommendation as a Service</title>

<!-- <link href="UI/bootstrap3/css/bootstrap.css" rel="stylesheet" /> -->
<link href="<c:url value="/resources/bootstrap3/css/bootstrap.css" />"
	rel="stylesheet" />
<link href="<c:url value="/resources/assets/css/get-shit-done.css" />"
	rel="stylesheet" />
<link href="<c:url value="/resources/assets/css/demo.css" />"
	rel="stylesheet" />
<link href="<c:url value="/resources/assets/css/jraas.css" />"
	rel="stylesheet" />

<!--     Font Awesome     -->
<link
	href="<c:url value="/resources/bootstrap3/css/font-awesome.css" />"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Grand+Hotel'
	rel='stylesheet' type='text/css'>

<script src="<c:url value="/resources/jquery/jquery-1.10.2.js" />"
	type="text/javascript"></script>
<script src="<c:url value="/resources/jquery/raphael.js" />"
	type="text/javascript"></script>
<script src="<c:url value="/resources/jquery/jquery.usmap.js" />"
	type="text/javascript"></script>
<script
	src="<c:url value="/resources/assets/js/jquery-ui-1.10.4.custom.min.js" />"
	type="text/javascript"></script>
<script src="<c:url value="/resources/bootstrap3/js/bootstrap.js" />"
	type="text/javascript"></script>
<script src="<c:url value="/resources/assets/js/gsdk-checkbox.js" />"></script>
<script src="<c:url value="/resources/assets/js/gsdk-radio.js" />"></script>
<script
	src="<c:url value="/resources/assets/js/gsdk-bootstrapswitch.js" />"></script>
<script src="<c:url value="/resources/assets/js/get-shit-done.js" />"></script>
<script src="<c:url value="/resources/assets/js/custom.js" />"></script>
</head>
<body>
	<script>
		// This is called with the results from from FB.getLoginStatus().
		function statusChangeCallback(response) {
			console.log('statusChangeCallback');
			console.log(response);
			// The response object is returned with a status field that lets the
			// app know the current login status of the person.
			// Full docs on the response object can be found in the documentation
			// for FB.getLoginStatus().
			if (response.status === 'connected') {
				// Logged into your app and Facebook.
				testAPI();
			} else if (response.status === 'not_authorized') {
				// The person is logged into Facebook, but not your app.
				document.getElementById('status').innerHTML = 'Please log '
						+ 'into this app.';
			} else {
				// The person is not logged into Facebook, so we're not sure if
				// they are logged into this app or not.
				document.getElementById('status').innerHTML = 'Please log '
						+ 'into Facebook.';
			}
		}

		// This function is called when someone finishes with the Login
		// Button.  See the onlogin handler attached to it in the sample
		// code below.
		function checkLoginState() {
			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});
		}

		window.fbAsyncInit = function() {
			FB.init({
				appId : '',
				cookie : true, // enable cookies to allow the server to access 
				// the session
				xfbml : true, // parse social plugins on this page
				version : 'v2.2' // use version 2.2
			});

			// Now that we've initialized the JavaScript SDK, we call 
			// FB.getLoginStatus().  This function gets the state of the
			// person visiting this page and can return one of three states to
			// the callback you provide.  They can be:
			//
			// 1. Logged into your app ('connected')
			// 2. Logged into Facebook, but not your app ('not_authorized')
			// 3. Not logged into Facebook and can't tell if they are logged into
			//    your app or not.
			//
			// These three cases are handled in the callback function.

			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});

		};

		// Load the SDK asynchronously
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		// Here we run a very simple test of the Graph API after login is
		// successful.  See statusChangeCallback() for when this call is made.
		function testAPI() {
			console.log('Welcome!  Fetching your information.... ');
			FB
					.api(
							'/me',
							function(response) {
								console.log('Successful login for: '
										+ response.name);
								document.getElementById('status').innerHTML = 'Thanks for logging in, '
										+ response.name + '!';
							});
		}
	</script>
	<div class="container">
		<div id="navbar">
			<nav class="navbar navbar-ct-blue" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<button id="login_btn1" type="button"
							class="btn btn-round btn-default navbar-toggle"
							data-toggle="collapse">Login</button>
						<button id="register_btn1" type="button"
							class="btn btn-round btn-default navbar-toggle"
							data-toggle="collapse">Register</button>
						<!-- <button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> 
							<span class="icon-bar"></span> <span class="icon-bar"></span> 
							<span class="icon-bar"></span>
						</button> -->
						<a class="navbar-brand" href="#">JRaaS</a>
					</div>

					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<!-- <li><a href="#">Profile</a></li>
							<li><a href="#">Messages</a></li> -->
							<li><a href="javascript:void(0);" data-toggle="search"
								class="hidden-xs"><i class="fa fa-search"></i>Find a Job</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right"
							style="padding-right: 20px;">
							<li style="padding-right: 5px;">
								<button id="register_btn2" class="btn btn-round btn-default">Register</button>
							</li>
							<li>
								<button id="login_btn2" class="btn btn-round btn-default"
									data-toggle="modal" data-target="#loginModal">Login</button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>

		<!-- <div class="main-wrap"> -->
		<div class="container-fluid">
			<!-- <div class="content">
					<div class="col-md-1 col-md-offset-2"> -->
			<div class="space-30"></div>
			<div class="row">
			<div id="map" class="col-xs-5 col-md-5 hidden-xs map"></div>			
			<div class="col-xs-12 col-md-6 panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a href="#collapseOne" data-toggle="collapse">Job1 Title..</a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse">
						<div class="panel-body">
							<p>This is the job description.</p>
							<p>This is a detailed decription of the job</p>
						</div>
					</div>
					<div class="panel-heading">
						<h4 class="panel-title">
							<a href="#collapseTwo" data-toggle="collapse">Job2 Title..</a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse">
						<div class="panel-body">
							<p>This is the second job in the list.</p>
						</div>
					</div>
					</div>
				</div>
			
			</div>

			<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">Let's Get To It!!</h4>
						</div>
						<div class="modal-body">
							<div>
								<label class="ct-blue"> <i>Email ID</i> <input
									type="text" value="" placeholder="Your Email ID"
									class="form-control" />
								</label>
								<div class="fb-login-button" data-max-rows="1"
									data-size="medium" data-show-faces="false"
									data-auto-logout-link="true"></div>
								<div>
									<script type="in/Login"></script>
								</div>
								<!-- <fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button> -->
							</div>
							<div>
								<label class="ct-blue"> <i>Password</i> <input
									type="password" value="" placeholder="Keep this a Secret!!"
									class="form-control" />
								</label>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-info btn-simple">Login</button>
							<div class="divider"></div>
							<button type="button" class="btn btn-default btn-simple"
								data-dismiss="modal">Cancel</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 	</div>
		</div>
	</div> -->
</body>
<script>
	$(document).ready(function() {
		$('#map').usmap({
			stateHoverAnimation : 300,
			stateHoverStyles : {
				fill : '#2C93FF'
			},
			stateStyles : {
				fill : '#FFFFFF'
			}
		});
	});
</script>
<script>
	$('#register_btn2').click(function() {
		window.location.href = "whoareyou";
	});
	$('#register_btn1').click(function() {
		window.location.href = "whoareyou";
	});
</script>
</html>
