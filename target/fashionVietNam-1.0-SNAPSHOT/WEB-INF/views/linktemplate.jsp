
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="<c:url value='/template/css/bootstrap.css'/>" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value='/template/js/jquery.min.js'/>"></script>
<script src="<c:url value='/template/js/customKienVoi.js'/>"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="<c:url value='/template/css/style.css'/>" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashion Mania Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<link href="<c:url value='/template/css/memenu.css'/>" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<c:url value='/template/js/memenu.js'/>"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="<c:url value='/template/js/simpleCart.min.js'/>"> </script>
<!-- slide -->
<script src="<c:url value='/template/js/responsiveslides.min.js'/>"></script>
<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            speed: 500,
            namespace: "callbacks",
            pager: true,
        });
    });
</script>


<script src="<c:url value='/template/js/imagezoom.js'/>"></script>
<!-- FlexSlider -->
<script defer src="<c:url value='/template/js/jquery.flexslider.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/template/css/flexslider.css'/>" type="text/css" media="screen" />

<script>
    // Can also be used with $(document).ready()
    $(window).load(function() {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
    });
</script>
<!---pop-up-box---->
<link href="<c:url value='/template/css/popuo-box.css'/>" rel="stylesheet" type="text/css" media="all"/>
<script src="<c:url value='/template/js/jquery.magnific-popup.js'/>" type="text/javascript"></script>
<!---//pop-up-box---->
<script>
    $(document).ready(function() {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
</script>