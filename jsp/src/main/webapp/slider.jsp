<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<!-- 항상  jquery먼저 넣기, 3.5.1.slim.min.js에서 slim빼도 된다-->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jcarousel/0.3.9/jquery.jcarousel.min.js"></script>
<style>
.jcarousel {
    position: relative;
    overflow: hidden;
}

.jcarousel ul {
    width: 10000em;
    position: relative;
    list-style: none;
    margin: 0;
    padding: 0;
}


.jcarousel li {
    float: left;
}
</style>
<script>
$(function(){
   $(".jcarousel").jcarousel({
      animation: {
         duration: 800,
         easing: 'linear',
         complete: function(){
            
         }
      }
   });
});
</script>
</head>
<body>
<div class="jcarousel">
    <ul>
        <li><img src="./images/Chrysanthemum.jpg"></li>
        <li><img src="./images/Hydrangeas.jpg"></li>
        <li><img src="./images/Jellyfish.jpg"></li>
    </ul>
</div>
</body>
</html>