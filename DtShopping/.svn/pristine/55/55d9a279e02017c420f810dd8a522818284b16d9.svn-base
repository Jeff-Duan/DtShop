<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>500</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font/error.css" />
</head>
<body translate="no"> 
<div class="content">
  <canvas class="snow" id="snow" width="1349" height="400"></canvas>
  <div class="main-text">
    <span>〒_〒&nbsp;&nbsp;很抱歉,<br />你访问的页面迷路了。</span>
  </div>
  <div class="ground">
    <div class="mound"> 
      <div class="mound_text">500 </div>
      <div class="mound_spade"></div> 
    </div>
  </div>
   <div class="img">
 <a id="back" href="javascript:void(0)">back homepage</a>
  </div>
</div>

    <script>
    (function() {
	function ready(fn) {
		if (document.readyState != 'loading'){
			fn();
		} else {
			document.addEventListener('DOMContentLoaded', fn);
		}
	}
	
	function makeSnow(el) {
		var ctx = el.getContext('2d');
		var width = 0;
		var height = 0;
		var particles = [];
		
		var Particle = function() {
			this.x = this.y = this.dx = this.dy = 0;
			this.reset();
		}
		
		Particle.prototype.reset = function() {
			this.y = Math.random() * height;
			this.x = Math.random() * width;
			this.dx = (Math.random() * 1) - 0.5;
			this.dy = (Math.random() * 0.5) + 0.5;
		}
		
		function createParticles(count) {
			if (count != particles.length) {
				particles = [];
				for (var i = 0; i < count; i++) {
					particles.push(new Particle());
				}
			}
		}
				
		function onResize() {
			width = window.innerWidth;
			height = window.innerHeight;
			el.width = width;
			el.height = height;
			
			createParticles((width * height) / 10000);
		}
		
		function updateParticles() {
			ctx.clearRect(0, 0, width, height);
			ctx.fillStyle = '#f6f9fa';
			
			particles.forEach(function(particle) {
				particle.y += particle.dy;
				particle.x += particle.dx;
				
				if (particle.y > height) {
					particle.y = 0;
				}
				
				if (particle.x > width) {
					particle.reset();
					particle.y = 0;
				}
				
				ctx.beginPath();
				ctx.arc(particle.x, particle.y, 5, 0, Math.PI * 2, false);
				ctx.fill();
			});
			
			window.requestAnimationFrame(updateParticles);
		}
		
		onResize();
		updateParticles();
	}
	
	ready(function() {
		var canvas = document.getElementById('snow');
		makeSnow(canvas);
	});
})();
  </script>

</body>
	<script type="text/javascript">
		document.getElementById("back").onclick=function(){
			window.history.go(-1);
		}
	</script>
</html>