#!/bin/bash

# 创建新的 HTML 文件
echo "<!DOCTYPE html>
<html lang=\"en\">

<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Material+Icons+Outlined\">
    <title>Combined Files</title>" > combined.html

# 查找并添加 CSS 文件引用到新的 HTML 文件
find . -type f -name "*.css" -exec echo "    <link rel=\"stylesheet\" href=\"{}\">" \; >> combined.html

# 查找并添加 JavaScript 文件引用到新的 HTML 文件
find . -type f -name "*.js" -exec echo "    <script src=\"{}\"></script>" \; >> combined.html

# 关闭头部标签
echo "</head>

<body>
    
    <div class=\"parent-div\">
        <h1>Small Custom Drag'n'drop File Upload Plugin Example</h1>
        <style>
.download{ padding: 1.25rem; border:0; border-radius:3px; background-color:#4F46E5; color:#fff;cursor:pointer; text-decoration:none;}.download:hover{color: #fff}#carbonads{display:block;overflow:hidden;max-width:728px;position:relative;font-size:22px;box-sizing:content-box}#carbonads>span{display:block}#carbonads a{color:#4F46E5;text-decoration:none}#carbonads a:hover{color:#4F46E5}.carbon-wrap{display:flex;align-items:center}.carbon-img{display:block;margin:0;line-height:1}.carbon-img img{display:block;height:90px;width:auto}.carbon-text{display:block;padding:0 1em;line-height:1.35;text-align:left}.carbon-poweredby{display:block;position:absolute;bottom:0;right:0;padding:6px 10px;text-align:center;text-transform:uppercase;letter-spacing:.5px;font-weight:600;font-size:8px;border-top-left-radius:4px;line-height:1;color:#aaa!important}@media only screen and (min-width:320px) and (max-width:759px){.carbon-text{font-size:14px}}
</style>
<div><div id=\"carbon-block\"></div>
<!-- jQuery_Replace_Demo -->
<ins class=\"adsbygoogle\"
     style=\"display:block\"
     data-ad-client=\"ca-pub-2783044520727903\"
     data-ad-slot=\"7325992188\"
     data-ad-format=\"auto\"
     data-full-width-responsive=\"true\"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script></div>
        <div id=\"fileUpload\"></div>
    </div>

    <script src=\"https://code.jquery.com/jquery-3.7.1.min.js\"></script>
    <script src=\"fileUpload/fileUpload.js\"></script>

    <script>
        \$(document).ready(function () {
            \$(\"#fileUpload\").fileUpload();
        });
    </script>

</body>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-1VDDWMRSTH');
</script><script>
try {
  fetch(new Request(\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\", { method: 'HEAD', mode: 'no-cors' })).then(function(response) {
    return true;
  }).catch(function(e) {
    var carbonScript = document.createElement(\"script\");
    carbonScript.src = \"//cdn.carbonads.com/carbon.js?serve=CK7DKKQU&placement=wwwjqueryscriptnet\";
    carbonScript.id = \"_carbonads_js\";
    document.getElementById(\"carbon-block\").appendChild(carbonScript);
  });
} catch (error) {
  console.log(error);
}
</script>
</html>" >> combined.html

# 移动新的 HTML 文件到合适的位置
mv combined.html /path/to/your/index_combinde.html

