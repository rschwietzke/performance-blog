<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/highlight/highlight.min.js"></script>

<#noparse>
<script>
    // 1. Find all <code> tags that have a "data-lang" attribute
    const codeBlocks = document.querySelectorAll('code[data-lang]');

    codeBlocks.forEach(block => {
        // 2. Get the language string (e.g., "java", "python", "rust")
        const lang = block.getAttribute('data-lang');

        // 3. Add the corresponding class (e.g., "language-java")
        if (lang) {
            block.classList.add(`language-${lang}`);
        }
    });

    hljs.highlightAll();
</script>
</#noparse>