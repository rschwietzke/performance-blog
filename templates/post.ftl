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
			<#assign post = content />

			<#if (post??) >
				<#assign firstParagraphOnly=false>
				<#include "post/content.ftl">
			</#if>

            <#-- No reuse, hence this is directly embedded-->
            <div class="pagination">
                <#if (post.previousContent)??>
                    <div class="prev">
                        <a href="${content.rootpath}${post.previousContent.noExtensionUri!post.previousContent.uri}"
                            class="button big previous"><i class="bi bi-caret-left"></i>${content.previousContent.title}</a>
                    </div>
                </#if>
                <#if (post.nextContent)??>
                    <div class="next">
                        <a href="${content.rootpath}${post.nextContent.noExtensionUri!post.nextContent.uri}"
                            class="button big next">${content.nextContent.title}<i class="bi bi-caret-right"></i></a>
                    </div>
                </#if>
            </div>
		</main>
	</div>
	<div class="utility-nav">
		<a id="back-to-top" href="#" class="bi bi-arrow-up-circle"></a>
	</div>
	<!--<div id="push"></div>-->

	<#include "commons/footer.ftl">
</body>
</html>
