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
	<div id="wrapper">

		<#include "commons/menu.ftl">

		<main id="main">
			<header>
				<h1>Archive</h1>
			</header>

			<div class="posts">
                <#list published_posts as post>
			        <article data-file="${content.rootpath}${post.noExtensionUri!post.uri}" data-target="article">
			        	<h2><a href="${content.rootpath}${post.noExtensionUri!post.uri}">${post.title}</a></h2>
						<#if post.excerpt??>
							<p class="description">${post.excerpt}</p>
						</#if>
						<time>${post.date?string("yyyy-MM-dd")}</time>
			        </article>
				</#list>
			</div>
		</main>

		<#include "commons/sidebar.ftl">
	</div>

	<#include "commons/footer.ftl">
</body>
</html>
