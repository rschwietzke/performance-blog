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

		<main id="main">
		    <#list published_posts as post>
				<#if (post??) >
					<#assign firstParagraphOnly = true>
					<#include "post/content.ftl">
				</#if>
			</#list>

            <#-- No reuse, hence this is directly embedded-->
            <div class="pagination">
                <#if (config.index_paginate?? && numberOfPages > 1) >

                    <div class="prev">
                        <a href="${content.rootpath}${previousFileName!'#'}"
                            class="<#if (previousFileName?? == false) >disabled </#if> button big previous"><i class="bi bi-caret-left"></i>PREVIOUS</a>
                    </div>

                	<div class="pageinfo">${currentPageNumber} of ${numberOfPages}</div>

                    <div class="next">
                        <a href="${content.rootpath}${nextFileName!'#'}"
                            class="<#if (nextFileName?? == false) >disabled </#if> button big next">NEXT<i class="bi bi-caret-right"></i></a>
                    </div>
                </#if>

            </div>
		</main>

		<#include "commons/sidebar.ftl">
	</div>
	<div class="utility-nav">
		<a id="back-to-top" href="#" class="bi bi-arrow-up-circle"></a>
	</div>

	<#include "commons/footer.ftl">

</body>
</html>
