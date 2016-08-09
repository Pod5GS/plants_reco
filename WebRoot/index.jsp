<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>植物识别</title>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Google Webfont -->
<link href='http://fonts.useso.com/css?family=Lato:300,400,700'
	rel='stylesheet' type='text/css'>
<!-- Themify Icons -->
<link rel="stylesheet" href="css/themify-icons.css">
<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css">
<!-- Easy Responsive Tabs -->
<link rel="stylesheet" href="css/easy-responsive-tabs.css">
<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Theme Style -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/dropzone.css">
<link rel="stylesheet" href="css/sweetalert.css">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<style>
.uline-title {
	margin-bottom: 50px;
	padding: 0 0 37px;
	text-align: center;
	background: url("images/utitlebg.png");
	background-repeat: no-repeat;
	background-position: center bottom -2px;
}
</style>
</head>
<body>

	<!-- START #fh5co-header -->
	<header id="fh5co-header-section" role="header" class="">
		<div class="container">



			<!-- <div id="fh5co-menu-logo"> -->
			<!-- START #fh5co-logo -->
			<h1 id="fh5co-logo" class="pull-left">
				<a href="index.jsp"><img src="images/logo.png"></a>
			</h1>

			<!-- </div> -->

		</div>
	</header>


	<div id="fh5co-hero">
		<a href="#fh5co-main"
			class="smoothscroll fh5co-arrow to-animate hero-animate-4"><i
			class="ti-angle-down"></i></a>
		<!-- End fh5co-arrow -->
		<div class="container">
			<div class="col-md-8 col-md-offset-2">
				<div class="fh5co-hero-wrap">
					<div class="fh5co-hero-intro">
						<h1 class="to-animate hero-animate-1">拍下你想了解的植物</h1>
						<h2 class="to-animate hero-animate-2">上传图片，我们会帮你识别</h2>
						<p class="to-animate hero-animate-3">赶快来试一试吧</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-main">
		<div id="uploadarea" class="container">
			<div class="row">
				<div
					class="col-md-8 col-md-offset-2 text-center fh5co-section-heading work-box fadeInUp animated">
					<h2 class="uline-title text-center">上传您想要识别的植物图片</h2>
					<div class="fh5co-spacer fh5co-spacer-sm"></div>
				</div>
			</div>
			<div class="row">
				<div id="dropzone">
					<form action="upload" class="dropzone" id="image"
						enctype="multipart/form-data">
						<div class="fallback">
							<input name="file" type="file" />
						</div>
					</form>
				</div>
				<div style="margin-top:20px;">
					<a id="submit-projectfile"
						class="col-md-8 col-sm-12 col-md-offset-2 col-xs-12 btn btn-primary" style="display:none;">开始鉴定</a>
				</div>
			</div>
			<div class="fh5co-spacer fh5co-spacer-md"></div>
			<div class="fh5co-spacer fh5co-spacer-md"></div>
		</div>
		<!-- END container -->
		<div id="resultarea" class="container" style="display:none;">
			<div
				class="col-md-8 col-md-offset-2 text-center fh5co-section-heading work-box fadeInUp animated">
				<h2 class="uline-title text-center">以下是机器识别的结果</h2>
				<div class="fh5co-spacer fh5co-spacer-sm"></div>
			</div>
			<div class="row">
				<div
					class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 text-center fh5co-work-item work-box fadeInUp animated">
					<figure>
						<a onclick="showDetail()"><img class="img-responsive"
							src="images/work_2.jpg" alt="Free HTML5 Template"></a>
					</figure>
					<h3 class="heading">太阳花</h3>
					<p>准确率：83%</p>
				</div>
				<div style="margin-top:20px;">
					<a class="col-md-8 col-sm-12 col-md-offset-2 col-xs-12 btn btn-primary"
						onclick="showUpload()">鉴别其它的植物</a>
				</div>
			</div>
		</div>
		<!-- END container -->
		<div id="detailarea" class="container" style="display:none;">
			<div class="row">
				<div class="col-sm-6">
					<div class="item">
						<img src="images/sample.jpg" class="img-responsive" alt="...">
					</div>
				</div>
				<div class="col-sm-6">
					<h3 class="second-child">
						<span>太阳花</span>
					</h3>
					<p>简介</p>
					<br>
					<h4>
						<span>详情</span>
					</h4>
					<table class="table">
						<tbody>
							<tr>
								<td>纲</td>
								<td></td>
								<td>太阳花纲</td>
							</tr>
							<tr>
								<td>科</td>
								<td></td>
								<td>向日葵科</td>
							</tr>
							<tr>
								<td>常见地</td>
								<td></td>
								<td>罗姆楼</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row" style="margin-top:20px;">
					<a id="return"
						class="col-md-8 col-sm-12 col-md-offset-2 col-xs-12 btn btn-primary"
						onclick="showResult()">返回</a>
			</div>
		</div>
		<!-- END container -->
	</div>
	<!-- END fhtco-main -->


	<footer role="contentinfo" id="fh5co-footer">
		<a href="#" class="fh5co-arrow fh5co-gotop footer-box"><i
			class="ti-angle-up"></i></a>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 footer-box">
					<h3 class="fh5co-footer-heading">关于我们</h3>
					<p style="font-size:large">
					    <i class="fa fa-location-arrow"></i> <b style="margin-left:1em">清华大学罗姆楼</b><br>
						<i class="fa fa-envelope-o"></i>  <b style="margin-left:1em">projectplant_reco@163.com</b><br>
						<i class="fa fa-phone"></i>  <b style="margin-left:1em">010-62345789</b><br>
					</p>
				</div>
			</div>
			<!-- END row -->
			<div class="row">
			    <div class="col-md-12 footer-box">
					<div class="fh5co-copyright">
						<p>
							&copy; 2016 iVip of Tsinghua University All Rights Reserved. <br>
						</p>
					</div>
				</div>
			</div>
			<div class="fh5co-spacer fh5co-spacer-md"></div>
		</div>
	</footer>


	<!-- jQuery -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>
	<!-- Easy Responsive Tabs -->
	<script src="js/easyResponsiveTabs.js"></script>
	<!-- FastClick for Mobile/Tablets -->
	<script src="js/fastclick.js"></script>
	<!-- Parallax -->
	<script src="js/jquery.parallax-scroll.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
	<script src="js/dropzone.js"></script>
	<script src="js/sweetalert.min.js"></script>
	<script>
		var uploadflag = true;
		//显示上传模块
		function showUpload() {
			$('#uploadarea').attr('style', '');
			$('#resultarea').attr('style', 'display:none;');
		}
		//显示结果模块
		function showResult() {
			$('#uploadarea').attr('style', 'display:none;');
			$('#detailarea').attr('style', 'display:none;');
			$('#resultarea').attr('style', '');
		}
		//显示详情模块
		function showDetail(){
		    $('#resultarea').attr('style', 'display:none;');
			$('#detailarea').attr('style', '');
		}
		$(document).ready(
				function() {
					//初始化dropzone
					Dropzone.options.image = {
						paramName : "file",// 与input的name属性一致
						maxFilesize : 10,// MB
						autoProcessQueue : false,
						addRemoveLinks : true,
						dictResponseError : 'Error while uploading file!',
						acceptedFiles : "image/jpeg,image/png",
						maxFiles : 1,
						init : function() {
							var submitButton = document
									.querySelector("#submit-projectfile");
							myDropzone = this; // closure
							submitButton.addEventListener("click", function() {
								myDropzone.processQueue(); // Tell Dropzone to process all queued files.
							});
							//超出文件个数限制的事件
							this.on("maxfilesexceeded", function(file) {
								this.removeAllFiles();
								this.addFile(file);
							});
							//添加一个文件的事件
							this.on("addedfile", function(file) {
								$('#submit-projectfile').attr("style", "");
								if (this.files[1] != null) {
									swal("错误", "一次只能鉴别一个植物图片！", "error");
									this.removeFile(this.files[0]);
								}
							});
							//删除文件的事件，当上传的文件为空时，使上传按钮不可用状态
							this.on("removedfile", function() {
								if (this.getAcceptedFiles().length === 0) {
									$("#submit-projectfile").attr("style",
											"display:none");
								}
							});
							//ajax请求收到回复后的事件
							this.on("complete", function(data) {
								result = data.xhr.responseText;
								if (result == '"fail"') {
									filename = data.name;
									var i, len, pre;
									swal("错误", "上传文件：" + filename + "时发生错误！",
											"error");
									uploadflag = false;
								} else {
									uploadflag = true;
									showResult();
								}
							});
							this.on("queuecomplete", function(file) {
								if (uploadflag) {
									this.removeAllFiles();
								}
							});
						}
					};
				})
	</script>
</body>
</html>
