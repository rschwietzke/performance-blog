<#function cleanHtmlToMarkdown html>
    <#assign res = html />
    <#-- Preserve code listings with triple backticks -->
    <#assign res = res?replace(r'<pre class="prettyprint highlight"><code(?: class="language-([a-zA-Z0-9_-]+)")?[^>]*>([\s\S]*?)</code></pre>', '\n```$1\n$2\n```\n', 'rm') />
    <#assign res = res?replace(r'<pre\b[^>]*><code[^>]*>([\s\S]*?)</code></pre>', '\n```\n$1\n```\n', 'rm') />
    <#assign res = res?replace(r'<pre\b[^>]*>([\s\S]*?)</pre>', '\n```\n$1\n```\n', 'rm') />
    <#-- Inline code -->
    <#assign res = res?replace(r'<code>([\s\S]*?)</code>', '`$1`', 'rm') />

    <#-- Admonition blocks (Tip, Note, Warning, Caution, Important) -->
    <#assign res = res?replace(r'<div class="admonitionblock (tip|note|warning|caution|important)">[\s\S]*?<td class="content">\s*([\s\S]*?)\s*</td>[\s\S]*?</table>\s*</div>', '\n\n> [!$1]\n> $2\n\n', 'rm') />

    <#-- Tables -->
    <#assign res = res?replace(r'<t([dh])\b[^>]*>[\s\r\n]*(?:<p\b[^>]*>)?([\s\S]*?)(?:</p>)?[\s\r\n]*</t\1>', '| $2 ', 'rm') />
    <#assign res = res?replace(r'<tr\b[^>]*>\s*([\s\S]*?)\s*</tr>', '\n$1|\n', 'rm') />
    <#assign res = res?replace(r'</?(?:table|thead|tbody|tfoot)\b[^>]*>', '\n', 'rm') />

    <#-- Headings -->
    <#assign res = res?replace(r'<h1\b[^>]*>([\s\S]*?)</h1>', '\n\n### $1\n\n', 'rm') />
    <#assign res = res?replace(r'<h2\b[^>]*>([\s\S]*?)</h2>', '\n\n#### $1\n\n', 'rm') />
    <#assign res = res?replace(r'<h3\b[^>]*>([\s\S]*?)</h3>', '\n\n##### $1\n\n', 'rm') />
    <#assign res = res?replace(r'<h4\b[^>]*>([\s\S]*?)</h4>', '\n\n###### $1\n\n', 'rm') />
    <#assign res = res?replace(r'<h5\b[^>]*>([\s\S]*?)</h5>', '\n\n###### $1\n\n', 'rm') />
    <#assign res = res?replace(r'<h6\b[^>]*>([\s\S]*?)</h6>', '\n\n###### $1\n\n', 'rm') />

    <#-- Links -->
    <#assign res = res?replace(r'<a\b[^>]*href="([^"]*)"[^>]*>([\s\S]*?)</a>', '[$2]($1)', 'rm') />

    <#-- Lists: handle nested paragraph in list items first -->
    <#assign res = res?replace(r'<li>\s*<p\b[^>]*>([\s\S]*?)</p>\s*</li>', '\n- $1', 'rm') />
    <#assign res = res?replace(r'<li\b[^>]*>([\s\S]*?)</li>', '\n- $1', 'rm') />

    <#-- Paragraphs & line breaks -->
    <#assign res = res?replace(r'<br\s*/?>', '\n', 'rm') />
    <#assign res = res?replace(r'</p>', '\n\n', 'rm') />
    <#assign res = res?replace(r'<p\b[^>]*>', '', 'rm') />

    <#-- Emphasis and bold -->
    <#assign res = res?replace(r'<(?:strong|b)>([\s\S]*?)</(?:strong|b)>', '**$1**', 'rm') />
    <#assign res = res?replace(r'<(?:em|i)>([\s\S]*?)</(?:em|i)>', '*$1*', 'rm') />

    <#-- Blockquotes -->
    <#assign res = res?replace(r'<blockquote\b[^>]*>([\s\S]*?)</blockquote>', '\n> $1\n', 'rm') />

    <#-- Strip footnote refs -->
    <#assign res = res?replace(r'<sup class="footnote">[\s\S]*?</sup>', '', 'rm') />

    <#-- Strip all other HTML tags -->
    <#assign res = res?replace(r'<[^>]+>', '', 'rm') />

    <#-- Fix list item linebreaks where hyphen got detached from text -->
    <#assign res = res?replace(r'\n-\s*\n\s*', '\n- ', 'r') />

    <#-- Clean isolated table linebreaks -->
    <#assign res = res?replace(r'\|\s*\n+\s*\|', '| |', 'rm') />

    <#-- Unescape HTML entities -->
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
    <#assign res = res?replace('&nbsp;', ' ') />

    <#-- Normalize excess newlines -->
    <#assign res = res?replace(r'\r\n', '\n', 'r') />
    <#assign res = res?replace(r'\n{3,}', '\n\n', 'rm') />
    <#return res?trim />
</#function>
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
# ${config.site_title} - Full Content Archive

> ${config.sidebar_intro_summary}

- Author: ${config.site_author}
- Website: ${config.site_host}
- GitHub: https://github.com/${config.sidebar_social_github!'rschwietzke'}
- Email: ${config.sidebar_social_email!'blog@reneschwietzke.de'}

${config.sidebar_intro_about}

================================================================================
CORE PAGES
================================================================================

<#list published_pages as page>
<#if page.uri != "404.html" && page.type != "llms" && page.type != "llmsfull">
--------------------------------------------------------------------------------
## Page: ${cleanText(page.title)}
--------------------------------------------------------------------------------
- URL: ${config.site_host}/${page.noExtensionUri!page.uri}
<#if page.description?? && page.description?has_content>- Description: ${cleanText(page.description)}</#if>

${cleanHtmlToMarkdown(page.body)}


</#if>
</#list>

================================================================================
ARTICLES & POSTS
================================================================================

<#list published_posts as post>
<#if !post.uri?starts_with("demo/")>
--------------------------------------------------------------------------------
## Article: ${cleanText(post.title)}
--------------------------------------------------------------------------------
- URL: ${config.site_host}/${post.noExtensionUri!post.uri}
- Published Date: ${post.date?string("yyyy-MM-dd")}
- Author: ${post.author!config.site_author}
<#if post.tags?? && post.tags?has_content>- Tags: <#list post.tags as tag>${cleanText(tag)}<#sep>, </#list></#if>
<#if post.subheadline?? && post.subheadline?has_content>- Summary: ${cleanText(post.subheadline)}</#if>

${cleanHtmlToMarkdown(post.body)}


</#if>
</#list>
