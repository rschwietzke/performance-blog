<#function cleanText text>
    <#assign res = text />
    <#assign res = res?replace('&#8217;', '\'') />
    <#assign res = res?replace('&#8216;', '\'') />
    <#assign res = res?replace('&apos;', '\'') />
    <#assign res = res?replace('&#8220;', '"') />
    <#assign res = res?replace('&#8221;', '"') />
    <#assign res = res?replace('&ldquo;', '"') />
    <#assign res = res?replace('&rdquo;', '"') />
    <#assign res = res?replace('&#8230;', '...') />
    <#assign res = res?replace('&hellip;', '...') />
    <#assign res = res?replace('&#8203;', '') />
    <#assign res = res?replace('&#8212;', '—') />
    <#assign res = res?replace('&mdash;', '—') />
    <#assign res = res?replace('&#8211;', '–') />
    <#assign res = res?replace('&ndash;', '–') />
    <#assign res = res?replace('&shy;', '') />
    <#assign res = res?replace('&amp;', '&') />
    <#assign res = res?replace('&lt;', '<') />
    <#assign res = res?replace('&gt;', '>') />
    <#assign res = res?replace('&quot;', '"') />
    <#return res?trim />
</#function>
# ${config.site_title}

> ${config.sidebar_intro_summary}

${config.sidebar_intro_about}

- Author: ${config.site_author}
- Website: ${config.site_host}
- GitHub: https://github.com/${config.sidebar_social_github!'rschwietzke'}
<#if config.sidebar_social_mastodon?? && config.sidebar_social_mastodon?has_content>
- Mastodon: ${config.sidebar_social_mastodon}@${config.sidebar_social_mastodon_domain!'foojay.social'}
</#if>
<#if config.sidebar_social_twitter?? && config.sidebar_social_twitter?has_content>
- X/Twitter: https://x.com/${config.sidebar_social_twitter}
</#if>
- Email: ${config.sidebar_social_email!'blog@reneschwietzke.de'}

## Full Context Archive

- [Full Content Archive](${config.site_host}/llms-full.txt): Complete text of all articles and core pages in a single file for direct LLM ingestion.

## Key Pages

- [Home](${config.site_host}/): The blog front page with recent articles, highlights, and pinned posts.
- [About](${config.site_host}/pages/about.html): Background on René Schwietzke, career, contact details, and site philosophy.
- [Presentations](${config.site_host}/pages/conference-talks-and-presentations.html): Conference talks, slide decks, and workshop materials on Java performance, concurrency, 1BRC, and testing.
- [Resources](${config.site_host}/pages/resources.html): Curated collection of books, blogs, tools, and technical resources for Java developers and performance engineers.
- [JUG Talks & Abstracts (DE)](${config.site_host}/pages/jug-talks-and-abstracts-de.html): German abstracts and session descriptions for Java User Group meetups and conferences.

## Articles

<#list published_posts as post>
<#if !post.uri?starts_with("demo/")>
- [${cleanText(post.title)}](${config.site_host}/${post.noExtensionUri!post.uri}): <#if post.subheadline?? && post.subheadline?has_content>${cleanText(post.subheadline)}<#elseif post.excerpt?? && post.excerpt?has_content>${cleanText(post.excerpt)}<#else>${post.date?string("yyyy-MM-dd")}</#if>
</#if>
</#list>

## Optional & Feeds

- [Archive](${config.site_host}/archive.html): Complete chronological list of published articles.
- [RSS Feed](${config.site_host}/${config.feed_file!'feed.xml'}): RSS feed of all blog posts.
- [Sitemap](${config.site_host}/sitemap.xml): XML sitemap for web crawlers.
