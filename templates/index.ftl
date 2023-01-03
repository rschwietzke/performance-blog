<!DOCTYPE HTML>
<!--
    Based upon Future Imperfect by HTML5 UP
    html5up.net | @n33co
    Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)

    Modified heavily by René Schwietzke
-->
<html lang="en">
<#include "commons/head.ftl">
<body>
	<!-- Wrapper -->
	<div id="wrapper">
		<#include "commons/menu.ftl">

		<main id="main">
		    <#list published_posts as post>
				<#if (post??) >
					<#include "post/content-single.ftl">
				</#if>
			</#list>

			<#include "post/prev-next.ftl">
		</main>

		<#include "commons/sidebar.ftl">
	</div>
	<div class="utility-nav">
		<a id="back-to-top" href="#" class="bi bi-arrow-up-circle"></a>
	</div>
	<!--<div id="push"></div>-->

	<#include "commons/footer.ftl">
</body>
</html>
