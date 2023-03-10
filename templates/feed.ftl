<?xml version="1.0"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>${config.site_title?html}<#if (content.title)??> - <#escape x as x?xml>${content.title}</#escape></#if></title>
    <link>${config.site_host}</link>
    <atom:link href="${config.site_host}/${config.feed_file}" rel="self" type="application/rss+xml" />
    <description>${config.sidebar_intro_about}</description>
    <language>en-gb</language>
    <pubDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
    <lastBuildDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</lastBuildDate>

    <#list published_posts as post>
    <item>
      <title><#escape x as x?xml>${post.title}</#escape></title>
      <link>${config.site_host}/${post.noExtensionUri!post.uri}</link>
      <pubDate>${post.date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
      <guid isPermaLink="false">${post.noExtensionUri!post.uri}</guid>
      	<description>
	<#escape x as x?xml>
	${post.body}
	</#escape>
	</description>
    </item>
    </#list>

  </channel>
</rss>
