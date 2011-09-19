<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:if test="${not renderContext.editMode}">	
		<a href="${currentNode.properties['j:node'].node.url}" 
		rel="colorbox" 
		alt="${fn:escapeXml(not empty currentNode.properties['j:alternateText'].string ? currentNode.properties['j:alternateText'].string : items.properties['j:node'].name)}" 
		title="${fn:escapeXml(not empty currentNode.properties['j:alternateText'].string ? currentNode.properties['j:alternateText'].string : items.properties['j:node'].name)}">
			<img src="${currentNode.properties['j:node'].node.url}" height="${not empty currentNode.parent.properties.thumbnailHeight ? currentNode.parent.properties.thumbnailHeight.string : '50'}${currentNode.parent.properties.thumbnailSizeType.string == 'fixed' ? 'px' : '%'}" width="${not empty currentNode.parent.properties.thumbnailWidth ? currentNode.parent.properties.thumbnailWidth.string : '50'}${currentNode.parent.properties.thumbnailSizeType.string == 'fixed' ? 'px' : '%'}" />
		</a>
</c:if>			
<c:if test="${renderContext.editMode}">	
	<img src="${currentNode.properties['j:node'].node.url}" height="${not empty currentNode.parent.properties.thumbnailHeight ? currentNode.parent.properties.thumbnailHeight.string : '50'}${currentNode.parent.properties.thumbnailSizeType.string == 'fixed' ? 'px' : '%'}" width="${not empty currentNode.parent.properties.thumbnailWidth ? currentNode.parent.properties.thumbnailWidth.string : '50'}${currentNode.parent.properties.thumbnailSizeType.string == 'fixed' ? 'px' : '%'}" />				
</c:if>


