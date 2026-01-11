## Subresource Integrity

If you are loading Highlight.js via CDN you may wish to use [Subresource Integrity](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity) to guarantee that you are using a legimitate build of the library.

To do this you simply need to add the `integrity` attribute for each JavaScript file you download via CDN. These digests are used by the browser to confirm the files downloaded have not been modified.

```html
<script
  src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.11.1/highlight.min.js"
  integrity="sha384-5xdYoZ0Lt6Jw8GFfRP91J0jaOVUq7DGI1J5wIyNi0D+eHVdfUwHR4gW6kPsw489E"></script>
<!-- including any other grammars you might need to load -->
<script
  src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.11.1/languages/go.min.js"
  integrity="sha384-HdearVH8cyfzwBIQOjL/6dSEmZxQ5rJRezN7spps8E7iu+R6utS8c2ab0AgBNFfH"></script>
```

The full list of digests for every file can be found below.

### Digests

```
sha384-70Hnsgq+pLV6Nv+jLuSMFD/HnkaD43hro7nQzNuHz4xgF+tKOytAIoA6Sge1X9HB /es/languages/armasm.js
sha384-bLfpGfjsTXF9t/A7zVpnKcKLVqfpoDQO3cj/Otmw7Kg6WeGCUKiKIfT4ORFq4YFK /es/languages/armasm.min.js
sha384-+QLqOzVprIbDNiTtALJ0CqYF9lCa5YNGtiQE3WogL8TVStFdTMgpkWFBbVdDnj1W /es/languages/asciidoc.js
sha384-3p/AcS9vjLxqOK7hnymyAfIV1SJlGE0eW/iTNNfV56XtUc9kqpliCe3yJL7yZ2R3 /es/languages/asciidoc.min.js
sha384-GEKuLIWUwFVie1Sa2ux9Tqd97zFLMG27gkSee6tgrlQ2T7ZV2Z2k9Gb4VkllEqns /es/languages/avrasm.js
sha384-ZC3UT/YWwRsO9wJC1OuvC1LbMr5Gl6m+8t4IWuxAVU7AdxXERm5q/mKZUc59L18u /es/languages/avrasm.min.js
sha384-gRTR/fmk+6+ygbihH/fJvHgmffnOrd/eO7DW5zgu1uN9GBohtDx+OBs0DI0ejigB /es/languages/bash.js
sha384-Pg7b9hYE6kefjcNqAabhv8jOLCVoZubUaM4bZFjUJd0CaaQ14ksDI0GVllMtAF4S /es/languages/bash.min.js
sha384-rqmXEblVZx9ZsNNet5SE9HzCpyLycJlsvFieXpvVMP7rSlQ5g10/r0X/tOuJUzet /es/languages/basic.js
sha384-Z8A67hV3B66k1DT7o/OqP2m0DYQvowlpPFpnONn1omgUmBoqXPbxtd5yjwgn2APh /es/languages/basic.min.js
sha384-xhohaHGp8S443Qn4JZUYAcKqIIl0bQkFA79EUxpbX8GWb5oufdvvSI9ipl/Dasev /es/languages/c.js
sha384-xaTVEdq02jgKStoYDcZD8NhTN1XV/TWpIu4OM53MtMiLl08+e9YJNENo+R/6Nwp0 /es/languages/c.min.js
sha384-JqfjKoUfm5FxQAk+DZXWFG+QsHDv+UN33SNNMxmsc00Wb5PP0eORPryTKcAzuIFg /es/languages/ceylon.js
sha384-2fm8xiTBnHGYikBmYzXsHdNkejBluscHr6lflc37uLEOmqS7mO5AWcEetfKofCq2 /es/languages/ceylon.min.js
sha384-rFCBWxbZHxZD51qKR2cdayIcKUSHS3p1PWPIs1kjgsP7lu9ZP32ah/2DoQUm/rTg /es/languages/cpp.js
sha384-+1Koxl0St78gEZW5CpFK+dbLp7yNsfwLzzQUsSGimV4k/RVJUz6YvqtsqtdbJyKf /es/languages/cpp.min.js
sha384-MNeQHVR8xcLSJDolyMOu6ryJG57itl2ZQkQkX1ROPkTvdymcoVabvsqHWVk13mXq /es/languages/crystal.js
sha384-lans159An332J9CYcvdgkWOX6MHcoxH7Qu1lk25Kmc5cOTe39OuemUwkX8Ol2PfJ /es/languages/crystal.min.js
sha384-Gmvct15f4Mo9AXQG5bk5w78N1YjBLXXU3KIV7no+mOVnApXlwfw1dwjfueAwljIV /es/languages/css.js
sha384-1D7DbOic0Z5nM2ldSO9O/EsBfsg/5x7X7So1qnMgscI2ucDevptcg7cTvrD9rL0D /es/languages/css.min.js
sha384-CxgzMCYCdPS3oPSgukCqpDiqHKDKcrLdlyMqy9UF73u63+XVRlI32OproboitNa6 /es/languages/diff.js
sha384-joI34L4jMJOgkz6zOb3sqraHH5tmocRfXvs9HkdHfUpD3ceSxAqKlubpBT/4Q/sV /es/languages/diff.min.js
sha384-y5tpDG/EgM93k2unGm4XFn8l9V12Ru1tnk2TxhduZWqrEqAK86BQlDLuVAILe3OB /es/languages/go.js
sha384-/UGh0AcfdC41Di2LsNVYCPOJ24RfaUWWXniaZoGuM52DaQR7fwStKAHJumI+u5yY /es/languages/go.min.js
sha384-P681y6lFdceG8opaOgHzcrY89tFgopRRFkZPTMv9ZEJN2+Udf3kvJdExEDWN2qSB /es/languages/groovy.js
sha384-eZ//tCVwtbperfgzjozR7tIfO8yR+hUoOZANaZnbxvLmMwpN/HzbQxAx3c8BuHks /es/languages/groovy.min.js
sha384-vZWLk+C+23/W/GAmv4PXkZSZo82LXul6DdSgWcMzutPxGltitIk38HyLrxRVsFvm /es/languages/ini.js
sha384-CVynu7LzwkkAUiajSi0jprssYhgg9Vi1WSd8iR84Vmi6JdRGq3DT4vvEfjzoxxOK /es/languages/ini.min.js
sha384-lk+aAr+DNq8Rz3hXPSZ7ga38GS+tQfXDvexuUnyDCSju1t1SAsLipVIFGlRtcUjE /es/languages/java.js
sha384-5GpB6kfA2w03pZhAUmmNSYvR5pLvne/Rzqc22BmHv+t9ES7ifMX/ZE7x5TBeqW4d /es/languages/java.min.js
sha384-g7t9fKR5Tvod4iWv7BQXN+/JMn5GT9sD6FG3h7Fgl+KCv5k4NnnCzEqUe7BMJ9Mv /es/languages/javascript.js
sha384-f7huPivS1dV2T5V+g0aJpgsY7WBHWCsioIq30tpNoXGizD65fWJYGuXXVPNI52VB /es/languages/javascript.min.js
sha384-8CRS96Xb/ZkZlQU+5ffA03XTN6/xY40QAnsXKB0Y+ow1vza1LAkRNPSrZqGSNo53 /es/languages/json.js
sha384-UHzaYxI/rAo84TEK3WlG15gVfPk49XKax76Ccn9qPWYbUxePCEHxjGkV+xp9HcS/ /es/languages/json.min.js
sha384-74O59Gvm0duu3aXH7S8RHhqn8YvAF1JlgCdNDq5MaClY/f/0bMs4zryv55Whwp2c /es/languages/kotlin.js
sha384-+aJFpyNBGTRiXRDN6BLrctauQBKExwSosxOiHLUYReXKTsckW/RgMavqX6W+zTBL /es/languages/kotlin.min.js
sha384-LRBDaxnf3ea3MTosn2yHFNe+ECfow/i4s71k6UdzkNOS1QvgHkcqRBTkDZC5aEoP /es/languages/less.js
sha384-EJ7n9HlCUKgtcBomJlrocJe2M2WegUc2r/TqymQdykuxcLeA25bQ5665qN58BWki /es/languages/less.min.js
sha384-G8Zl3te56ft3aGpe25uWefXidaWzErZNty1FuVVPzapgLdI9KGeqi440JMcGSrpK /es/languages/llvm.js
sha384-5/rMDjrvVizUEgvQXzdMw4bEnPi4rc4g55j6uygbCX563PiwUWOt1DOFg8nWOW4k /es/languages/llvm.min.js
sha384-+KkqXkoHKtuOmUzhZ0BjyV0qjljnS+z6i4fELMEg5brFPtmDIog4zZMhylaBTsVi /es/languages/markdown.js
sha384-E7UvgBH6skA1FIOcn3B2c68GtJzrmZlOOC5p/fsxwihTZG/bBedJZu5PC1+kGX7q /es/languages/markdown.min.js
sha384-y2Db3nK1pqkBuLVsLlozVsu9r7X0O+m0WMXIj5SIsuz9E5KgJpuaybwueJksi/62 /es/languages/mipsasm.js
sha384-KMMe6+QkGQP4DfvJsD56GpZJP/8yXSPru/9XyyyjWUcsMpLDC/244yr6u7v+xkRP /es/languages/mipsasm.min.js
sha384-nX6U7dsHAva392x5DapMi9+cN+HkIXwDF/cO5tDOXi3sYd7lBTlwr6t6SISSh0P5 /es/languages/nestedtext.js
sha384-UHOC4FnNC/8bTChrsBexWVswrBnwU7nJluAaWhDvmaXphc+DKVcVjS6cQdOai4Tg /es/languages/nestedtext.min.js
sha384-e52eFo97cDL5ofCao3fbJj8GQs7stgPZECbKjCc8ndBQjiYNK5PnfwZjWkiXWyzH /es/languages/nix.js
sha384-sHiwn92elWF7g0yS0TFr/A4SdK4j+sI7xZMoPlVn2DCR/6nBNyt+zCNVVcZvW4yB /es/languages/nix.min.js
sha384-i6sPjmXfHWLljAXTYYk0vBOwgsUnUKnKXKH41qzc9OMhaf5AFZqXH7azX4SYdUiR /es/languages/plaintext.js
sha384-OOrQLW97d+/1orj9gjftwbbQyV8LNAcgagqVKBhUYA08Hdi5w0p6VoB3yt2k7gnG /es/languages/plaintext.min.js
sha384-6ziOLhWWyCEJ+Ho7frmiIJ+W0ZbVi6s9RxHsd1eF5DuGk117NZLm1mrWubXPjwhn /es/languages/properties.js
sha384-/jY3EnpQIhHPBJqje2gBbmlolzDCUfluYNls4EgMz6K8V1eGkYfd1EJBM0tepwl0 /es/languages/properties.min.js
sha384-JwqONJpp5Yd13rWopZDuCICZgb8U9Qsw35MbMvHG+KeEtG+UqIS/w8Qmr9vQKZLh /es/languages/purebasic.js
sha384-JzVm9L5sHG1OkQUlukf6fAWc7lqxdgQxgrkHQAC3usU06D17VYQMbmG5pXeFHk39 /es/languages/purebasic.min.js
sha384-JFRCn12yvr0NDhxPY8oZDk/G2Tjm7bGmqXy28Y0bq4J7D8mKha6jQJOXMB5wtTVr /es/languages/rust.js
sha384-JbkB8w/DGGyx29PIwSq8c/ZeiJB9T/X4mVAZFEyBiNlEAas98Q2NxpBPUlNIlE71 /es/languages/rust.min.js
sha384-R67rULqIohpEyV6aFbjxRv7xhK8v/KteX4cvOFmPcnZ2MTf65Zua+2DzB9MqqXuO /es/languages/scss.js
sha384-WMy5VYgOMFAnHhPJXVDCQ/Y/QPlUrBqNVPtFH6/gGg2F4uaAowyQ0y/9zWEeGpJe /es/languages/scss.min.js
sha384-1mmBZmAs44b6FtD9wpMiLJa8bLZgZv9xoAhngN6B5Q22y9CtcsU2lat0zlRtyVgy /es/languages/shell.js
sha384-u9PV7oWG/lZlm+GnftX7kn0w4b8rRfFxSv5SmJJPHWKGI03rz6VLqgZdQ1B5ez6b /es/languages/shell.min.js
sha384-82eHXc3kQTsEJ65AcO2c8eVqB9ynJzosSiMwdPYwt5oNRVsMKuxWoWkO5KFekVYB /es/languages/wasm.js
sha384-YBbT3eXpwj5Ddx0MS774iycYICw4gZ1Rs1ExYGIdcYC4EJhaWsfd9uNlaJZBuDaa /es/languages/wasm.min.js
sha384-SlI/W+G8uWNUJSAK5aQ6qG6L1vCJfzBIj4n7pmxtlQLBONfh4nqlvapD4XN3obTG /es/languages/x86asm.js
sha384-6jCvxwz6+4SETxn2V7LPLbyOa80MAobeFcGMoSk3ZR25GKcQQdZierMKqC5XdM+6 /es/languages/x86asm.min.js
sha384-9ECFzM+oWDye4s/MFx3QUXGo4mW43+SyLpWUDeQtWup6GZJ+KHFxVS89PmZt/fzl /es/languages/xml.js
sha384-PQrsaWeWrBiE1CFRw8K335CaJuQRTjDGm73vn8bXvlwaw6RyqWObdvMTBS8B75NN /es/languages/xml.min.js
sha384-7HTgKp/l2rzlyrh5vUfbfZVy+Wx1lKO4iGmfqvakienApv21u55lo+Vi+iVg4jY0 /es/languages/yaml.js
sha384-4smueUtgWTorlNLbaQIawnVCcIAuw82NetPOGWN5PbZT/pMr0rjvZXj0EUzJV1nr /es/languages/yaml.min.js
sha384-vny78QQbxaaD/525+QaaNXnMJ1ScCyVPdaNKVxN3kDwFJdvmriaAnjyWPCJDBziC /languages/armasm.js
sha384-t67w5HJDUbNsGJgMXu0fyABJE4s+YQn0hpn78kGPC1NfenqQ/JIw4g9jy0QMJZn4 /languages/armasm.min.js
sha384-lctfFl4oyA21jVOo6OW6n3ng/Yk/tPuM5/h7bMk1gv2nC5tKL4AdpRBugFnTU3j5 /languages/asciidoc.js
sha384-CMXVrh9g9wY0bYvbr18r26rwp495RtmyLa4uqYrnVBmJGG4IlJcfAzmVQunjabDM /languages/asciidoc.min.js
sha384-H1ktm9MvMAGcDYHzo8eoSNxe70VwyuyFmmiVvWvJlGNWDcFOok7t29KhHnrrU1dB /languages/avrasm.js
sha384-ged+H4JNXmGkHMYWfYfax1sk57U7EASWstnVP4n/jFJDScjuqV562RgxriO7o3Un /languages/avrasm.min.js
sha384-Jrkpn2hK0TY04skYBXB9fj7mMpKYy7g726cPwXGXf6mdBXnFlTDXFduxikMCRXT7 /languages/bash.js
sha384-BbT8tZtvkh8HPXIvL5RtzuljBwI3gR5KIdYxZyYSyI5C/+KNAGdzAiexvmxuroag /languages/bash.min.js
sha384-bnpCuTpfS8ukuVLhfvZeux01GjkQSo1jSHbvMeO+AHZOiiFEi0UKrwxAUMYDA0KQ /languages/basic.js
sha384-eiOqb/ds7X3JkCFzpDHXdBBL35GrdT1oz3+qs3L2GqIH8P0/BRhJ4AqYHFTlGhcx /languages/basic.min.js
sha384-lAz0Eyld5DmFJB7cxaZonrkUJzGefh+K3niV5d7+vzzS7/P7FEeCJeLNXzMjeo+N /languages/c.js
sha384-tMmX0hBMZeMrZhX6dUNxA94/DNJLl70ao6qu2N9+b/6Ep9Y2e1pBzVjxtLygIB+d /languages/c.min.js
sha384-2HldJets3heu1+B/KpUZuPW+hLolHxtOZ8DZfKJbgVtaNV8YBhBYXuMVZwpvdcLS /languages/ceylon.js
sha384-Y7lK00Ww4yHzRK965LfVd7rIbSKZOwyj/QpoAwDYvUZRqMPJ5d4dEwn8y/31nGwn /languages/ceylon.min.js
sha384-Z5Ja/rxBluJ4iPYwJYn2numfw2XFmlp3qLL1aJ1SZqyTjKWwMh9yWfpNCOqf3vAm /languages/cpp.js
sha384-B711MHXDqRvH/pKkxJk84RyRt9g0qyAJFsu2XukZKoCdnEiBmA6Aq9fO23ZCS7qk /languages/cpp.min.js
sha384-HqpJa53GJIs1K8/o7WNQxq7HalBZ1JKMOyZJjRb/8awu7pZdJ+lbByjjYU4u66Lt /languages/crystal.js
sha384-6tcHV8CgHkKMa5S21y+g9KLl9NcNtLLZWQh5dEXJLE0XTvyjWqNr/AHwcWYgb2b3 /languages/crystal.min.js
sha384-bsb3QmLtUiyaiHwtrL4YoAVI9yLsjyqxgoAsk4Zd+ass9rSK1WWRiCDSu/hm8QRp /languages/css.js
sha384-0XGvxIU7Oq1DQMMBr1ORiozzBq3KpZPE/74mJysWRBAop1dZ9Ioq/qRWe8u30Ded /languages/css.min.js
sha384-UZBiDq19/Pu+BEZTOdnKdnew0sCWKFa2EmtRr9O+ZndYF1NgJOlya5bua3Wf++BW /languages/diff.js
sha384-04MxX6iQ0WrwX6Df4GJWGCXwfr5hVS5CQ0r9CS7aunho7Fkj/AAWbEPU8a6G+4LA /languages/diff.min.js
sha384-uh0SMHiaDpf+y9t0NE6+t9c3aMlzs8mHPxmkEU3fY12P481V2wNrKoxPMlKVG61k /languages/go.js
sha384-HdearVH8cyfzwBIQOjL/6dSEmZxQ5rJRezN7spps8E7iu+R6utS8c2ab0AgBNFfH /languages/go.min.js
sha384-kM1I48KisjtnqMZYEGvwES0fxRXBeFcuFU1FMomHZgXWaFULNqYrt0JBUCQcfAvc /languages/groovy.js
sha384-Tm1Og6d1FV5GOFgkfZWi7DcSeMEA05xEeZfifgFC5IH6xxfoXwg5PaNNxrX4yinC /languages/groovy.min.js
sha384-izwcylRNWmKKRcyCyrYZyNQekUCyR7Fh1x8nYWNCRJoRDU5JXv6TcqlP4C+4MfIf /languages/ini.js
sha384-NrmnsdarwteQHPGjt70kaQTi1KE0XfOJNX9/VJSg6wWwU6U2nPzjl3iWkgU1cvyx /languages/ini.min.js
sha384-Dprg6CdFFkimxaHg7qM7njVaWLMlOLqughixPERBDbm0cHdX6rKujTnJReof8O6m /languages/java.js
sha384-e+59xEZvRMXSRGD31B3HOBGAGqhhs+bbkxCqPuJDkSX5QGneIGTIfwdYJckTN3AO /languages/java.min.js
sha384-yxv7Fv9ToggiLsR67t98hV5ZRup6XX6xL1Rkbi/cGV5J8y7fosCi9POqlBkiBWFg /languages/javascript.js
sha384-tPOrIubtDHoQU7Rqw0o88ilthGO0/4xEZGB47XrQKWhrc1/SchwsDx+AP74u4nk0 /languages/javascript.min.js
sha384-pUlqdjoNePvHvdi7GVKJJnh/P2T3EvXXodl5j0JtTkbNC4DRH7gwGbcHFa84bFOP /languages/json.js
sha384-3C+cPClJZgjKFYAb0bh35D7im2jasLzgk9eRix3t1c5pk1+x6b+bHghWcdrKwIo3 /languages/json.min.js
sha384-vIyPs+G4S+ut5NV5tBIN5/E17wBiWbTTkFPPFbBC+r/FZOD95/fbcSzzeo00bE3x /languages/kotlin.js
sha384-7abn027YsNDPFilpW9aLlNUanPrq7Ht81zKQL9MKQq6/nkKrLczChRK5OA8GSKep /languages/kotlin.min.js
sha384-KSqRjSg7Nn1FuuRUtjB7br82XVgWtqos5H9BlvRY1j5YQr2lftIUSg5deukqK89p /languages/less.js
sha384-M7Wfa4KRyfGnn1i52Nqpr5zWcrmVaO0luxCB+2Txz1eI2FRQfpDcNimn1f86K2Cp /languages/less.min.js
sha384-d0udVFqKcGL9t4V4uWX4gZjFdP1Pm0e8KKzoUrLUmuCUsolZkWSvoCT0UNN1Gcx3 /languages/llvm.js
sha384-H3eqxK8Ve23Rhvh2PBwboAibXmhLmgY2eTAg/ECOtrg8Z3vgwwHzLkhrc8m+jQtn /languages/llvm.min.js
sha384-Sk9XW/OOutdl6KS1M9Wson0imuqr0LkpoTRDHi5QFH4MWe0aViI5d86BOVkh8Ds0 /languages/markdown.js
sha384-Rv26WbhHH4MDPzeExq4ECmZUYF942tlfVhqA91Drw1P+Ey55KjihLF9RJENxjWr1 /languages/markdown.min.js
sha384-Fx0+eFAFHv2pT/+wp3iRcz0XyzyFhON0v43hzm/0Hg8kZaL1wyTiXXRmer5JXtuh /languages/mipsasm.js
sha384-VeVYtm/0co5ibFqSd/kX+kGQTsiOZmyuQryNrHfS6CXUV5ZIc7xPvRH5j6S/L0+s /languages/mipsasm.min.js
sha384-0zwYIRp+RFHa2eWj2EMe6AJDCX2KfKE7AlKBVq8AamkpHAqejDU9BSr7tDAgqsT8 /languages/nestedtext.js
sha384-mPlAhcndTZiSf/096MZYt0sKFL4wHbU7ZbS8Ef4ftXdZMW/imxwA1mUFFWsoupPO /languages/nestedtext.min.js
sha384-wwBKsXOEs1p7uKCdsKpaTaKuY93/AZKwArQlQbajfNO/TacO+xqQPtWAPlkD7yXo /languages/nix.js
sha384-vTCx2kYVScZBBnkBfni8njIypRHzdROvkOGvNYuSMM9jRoKf4EjCgwEUSfbEyBuc /languages/nix.min.js
sha384-MZKv9uidO1+VnHz8xWxPv6ACuLO5t823eanvTcKYnmi/ocdVYD8zKZNTxmF0nKEM /languages/plaintext.js
sha384-Z9EdtPaC8UiXHEq1WuQTdvqT+FwjLwaVTIwTCZW/dGfiU9nbF8Shvltrhqtw83Qb /languages/plaintext.min.js
sha384-IBSZGeRgNEOG3+t3RE0uLeiV5QFOYfL/ONCRpBLMGvnBClAUhNUUmYdY8bLXnFUw /languages/properties.js
sha384-Hw+JDJl3BaJE0DQ2qZUhbHrTi4UQ/je7PqMHPNfThOlI71MLMj8jRMr+wB0Fa9LS /languages/properties.min.js
sha384-FqryhhJ8lL4Eu69qBzexEWlcsrLU88l7Tr/q/HrTq1KxmkMrPCahvY0tQOGv7xLr /languages/purebasic.js
sha384-V9o4yDiTFuPL7DXmNGL/lWkau9FFJnPdVMWCD/An5TJ98wh8vJ8PpsM6AkFrY1cA /languages/purebasic.min.js
sha384-4hMItQrXDnquJWRbDiZ+cP4udu1pcJlCVFg3Ytv9OgWNbpIwzizsWbIwzA1BAJrI /languages/rust.js
sha384-kENps59cKQW5DV3vOEzpSp6tfGzWGpPYKz748i4gGziVSjieRtupNNu/WEwG3s8n /languages/rust.min.js
sha384-e5MJZgawCv4c+BexmFUMVQU6dLcIOXdieG/a1FPCIgnlGfBIEUUcFMMo+UrKMOtN /languages/scss.js
sha384-BYdYy4D3IX6eNNlKqsviUjxC6EqavvNwCVDMzmie3QXyArWdCQf+VvvFo4ciaNaW /languages/scss.min.js
sha384-BanM6jNzM3hgNw0Vu3gSe58a3MK3PSlMUzh5s8QaaDzIvTWgB0jNetV3rNxteKHy /languages/shell.js
sha384-mSZF08WaP0Llc4GMwE0KA2V9yfZQimO5PvfcXf2AATDdqri3Q7IdV7pfbhVPJCHV /languages/shell.min.js
sha384-TCN/hvup/XKpDtGmR/RyK6NSG247wkNROUpO2sAoJuwpMvcr4KP9HA+K5L2rvOKg /languages/wasm.js
sha384-J3pUKFGnHJH0czAle+lKF96F/08caYKJfTEzlt5dGbGTR9M4BwOeOqAgvSzsjOsP /languages/wasm.min.js
sha384-84n3ZSWWJWOuj+nQr6fRxTWhQzXtn0OxWyGL/59PeLhK/0Ii3XgZD9oMInf7+bCW /languages/x86asm.js
sha384-d1w6as9peRTJh7Tgj50482oZIrj0+1guPVjy1QRfEafPvwMu6JZ/J9CiS5cT8XE9 /languages/x86asm.min.js
sha384-Pgzg6a405W6U1xFjjSs5i8d7V81Tmt/TYn8HFOa+u1psDc8cbs8nC7BuyNXbWWRK /languages/xml.js
sha384-FQjSArDMJE4WMAJGcCNAV+IXIOljcIxM3UFAD2vxjedWmBnnDaAyqRG7AQHf/uM/ /languages/xml.min.js
sha384-6GXi9L5BnOWPU6bzwYL78Zscp23qyDdMLZpZvp4mLzvF2qt0eY/DfsPHiFVXq4hv /languages/yaml.js
sha384-A/iMReLA0Bo3tLydBIoOQXQzYnrwL90jkHYUubrtERUGCbIuU7U0EHge0Xd2s5sr /languages/yaml.min.js
sha384-t0aUUnER7iYenq53/U+jdQVIvEBGf2waMuQMfNfj0PCcUJ+gXiqr6XSXQCSHsdhf /highlight.js
sha384-zdTQ9vSbg3IMuZe5g46pjXrRehs6r76HtwPLglzdWs9E9bTH0B4nNUk5MM567L68 /highlight.min.js
```

