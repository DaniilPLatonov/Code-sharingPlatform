<#--
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Latest</title>
    <style>
        pre {
            background-color: #f5f5f5;
            border: 1px solid #ddd;
            border-radius: 3px;
            font-family: Consolas, monospace;
            font-size: 14px;
            line-height: 1.5;
            margin-bottom: 20px;
            max-height: 500px;
            overflow: auto;
            padding: 15px;
            white-space: pre-wrap;
            word-wrap: break-word;
        }
        #load_date {
            font-size: 12px;
            color: #777;
        }
    </style>
</head>
<body>
<h1>Code</h1>
<#list code as c>
<pre>${c.getCurrentCode()}</pre>
<span>${c.getLoadDate()}</span>
</#list>
</body>
</html>-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Latest Code Snippets</title>
    <style> body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            padding: 20px;
        }

        header {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        pre {
            background-color: #f5f5f5;
            border: 1px solid #ddd;
            border-radius: 3px;
            font-family: Consolas, monospace;
            font-size: 14px;
            line-height: 1.5;
            margin-bottom: 20px;
            max-height: 500px;
            overflow: auto;
            padding: 15px;
            white-space: pre-wrap;
            word-wrap: break-word;
        }

        span {
            display: block;
            font-size: 12px;
            color: #777;
            text-align: right;
        }

        .code-snippet {
            margin-bottom: 30px;
        }

    </style>
</head>
<body>
<header>
    <h1>Latest Code Snippets</h1>
</header>
<#list code as c>
    <div class="code-snippet">
        <pre>${c.getCurrentCode()}</pre>
        <span>${c.getLoadDate()}</span></div> </#list> </body>
</html>
