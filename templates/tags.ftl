<!DOCTYPE HTML>
<!--
    Based upon Future Imperfect by HTML5 UP html5up.net | @n33co
    Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)

    Initial adjusted version for Jbake by Manik Magar under MIT License
    https://github.com/manikmagar/jbake-future-imperfect-template

    Modified by René Schwietzke, MIT license (code) and CC-BY-4.0 license (content)
-->
<html lang="en">
<#include "commons/head.ftl">
<body>
	<!-- Wrapper -->
	<div id="wrapper">
		<#include "commons/menu.ftl">

		<main id="main" class="main-tags">
            <h1 class="tag"><i class="bi bi-tag"></i> ${tag}</h1>

            <#list tag_posts as post>
                <#assign firstParagraphOnly = true>
				<#include "post/content-list.ftl">
			</#list>
		</main>

		<#include "commons/sidebar.ftl">
	</div>
	<div class="utility-nav">
		<a id="back-to-top" href="#" class="bi bi-arrow-up-circle"></a>
	</div>

	<#include "commons/footer.ftl">

</body>
</html>
