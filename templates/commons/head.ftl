<head>
    <meta charset="utf-8"/>
    <title>${config.site_title?html}<#if (content.title)??> - <#escape x as x?xml>${content.title}</#escape></#if></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="${config.sidebar_intro_about}">
    <meta name="author" content="${content.author!config.site_author}">
    <meta name="keywords" content="<#list config.site_keywords as k>${k},</#list>">
    <meta name="generator" content="JBake">

    <link rel="stylesheet" href="/css/fonts.css" />
    <link rel="stylesheet" href="/css/bootstrap-icons.css" />

    <link rel="stylesheet" href="/css/normalize.css" />
    <link rel="stylesheet" href="/css/defaults.css" />

    <link rel="stylesheet" href="/css/main.css" />
    <link rel="stylesheet" href="/css/add-on.css" />
    <link rel="stylesheet" href="/css/highlight-default.min.css">

    <!-- get us the important fonts we use anyway -->
    <link rel="preload" href="/fonts/bootstrap-icons.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="/fonts/open-sans-v34-latin-regular.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="/fonts/noto-serif-v21-latin-regular.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="/fonts/open-sans-v34-latin-500.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="/fonts/open-sans-v34-latin-800.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="/fonts/open-sans-v34-latin-700.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="/fonts/open-sans-v34-latin-700.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="/fonts/source-code-pro-v22-latin-regular.woff2" as="font" type="font/woff2" crossorigin>

    <link rel="shortcut icon" href="/img/logo.svg" type="image/svg+xml">
    <link rel="shortcut icon" href="/img/favicon.png">

    <link rel="sitemap" type="application/xml" title="Sitemap" href="/sitemap.xml">

</head>
