<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Latest</title>
    <style>
        body {
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

        header a {
            display: inline-block;
            background-color: white;
            color: black;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
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
    <a href="http://localhost:8889/code/new">Add New Code Snippet</a>
</header>
<#list code as c>
    <div class="code-snippet">
        <pre>${c.getCurrentCode()}</pre>
        <span>${c.getLoadDate()}</span>
    </div>
</#list>
</body>
</html>