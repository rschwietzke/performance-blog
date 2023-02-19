<#if (config.sidebar_social_mastodon?has_content) >
<li><a rel="me" href="https://${config.sidebar_social_mastodon_domain}/${config.sidebar_social_mastodon}" target="_blank" title="Mastodon" class="bi bi-mastodon"></a></li>
</#if>

<#if (config.sidebar_social_github?has_content) >
<li><a href="https://github.com/${config.sidebar_social_github}" target="_blank" title="GitHub"><i class="bi bi-github"></i></a></li>
</#if>

<#if (config.sidebar_social_xing?has_content) >
<li><a href="//xing.com/profile/${config.sidebar_social_xing}" target="_blank" title="Xing" class="bi bi-xing"></a></li>
</#if>

<#if (config.sidebar_social_linkedin?has_content) >
<li><a href="//linkedin.com/in/${config.sidebar_social_linkedin}" target="_blank" title="LinkedIn" class="bi bi-linkedin"></a></li>
</#if>

<#if (config.sidebar_social_stackoverflow?has_content) >
<li><a href="//stackoverflow.com/users/${config.sidebar_social_stackoverflow}" target="_blank" title="Stack Overflow" class="bi bi-stack-overflow"></a></li>
</#if>

<#if (config.sidebar_social_twitter?has_content) >
<li><a href="https://twitter.com/${config.sidebar_social_twitter}" target="_blank" title="Twitter"><i class="bi bi-twitter"></i></a></li>
</#if>

<#if (config.sidebar_social_email?has_content) >
<li><a href="mailto:${config.sidebar_social_email}" title="Email"><i class="bi-solid bi-envelope"></i></a></li>
</#if>
