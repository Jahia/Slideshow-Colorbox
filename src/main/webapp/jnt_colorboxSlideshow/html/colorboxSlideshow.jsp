<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<template:addResources type="javascript" resources="jquery.colorbox-min.js"/>
<template:addResources type="css" resources="${currentNode.properties.style.string}/colorbox.css, colorbox_custom.css"/>

<template:addResources>
	<script>
		$(document).ready(function(){		
			$("a[rel='colorbox']").colorbox({
				<c:if test="${not empty currentNode.properties.transition}">transition:"${currentNode.properties.transition.string}",</c:if>
				<c:if test="${not empty currentNode.properties.imagesWidth}">width:"${currentNode.properties.imagesWidth.string} ${currentNode.properties.imagesSizeType == 'fixed' ? '%' : 'px'}",</c:if>
				<c:if test="${not empty currentNode.properties.imagesHeight}">height:"${currentNode.properties.imagesHeight.string} ${currentNode.properties.imagesSizeType == 'fixed' ? '%' : 'px'}",</c:if>
				<c:if test="${not empty currentNode.properties.slideshow}">slideshow:"${currentNode.properties.slideshow.string}",</c:if>
				<c:if test="${not empty currentNode.properties.slideshowSpeed}">slideshowSpeed:"${currentNode.properties.slideshowSpeed.string}",</c:if>
				<c:if test="${not empty currentNode.properties.slideshowAuto}">slideshowAuto:"${currentNode.properties.slideshowAuto.string}",</c:if>				
//appel option par défault pour éviter un problème de virgule				
				open:false
			});
			
			//Example of preserving a JavaScript event for inline calls.
			$("#click").click(function(){ 
				$('#click').css({"background-color":"#f00", "color":"#fff", "cursor":"inherit"}).text("Open this window again and this message will still be here.");
				return false;
			});
		});
	</script>
</template:addResources>

<div class="colorboxThumbnail">
	<c:forEach items="${currentNode.nodes}" var="items">
		<template:module node="${items}" view="colorbox"/>
	</c:forEach>
	<div class="clear"> </div>
</div>
<c:if test="${renderContext.editMode}">
    <template:module path="*"/>
</c:if>

