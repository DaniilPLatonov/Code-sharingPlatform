<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Code</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 16px;
            line-height: 1.5;
            margin: 0;
            padding: 0;
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
            margin: 20px;
            max-height: 500px;
            overflow: auto;
            padding: 15px;
            white-space: pre-wrap;
            word-wrap: break-word;
        }
        #load_date {
            color: #777;
            font-size: 12px;
            margin-bottom: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
<header>
    <h1>Code Viewer</h1>
</header>
<pre>${codeSnippet}</pre>
<div id="load_date">Loaded on ${loadDate}</div>
</body>
</html>