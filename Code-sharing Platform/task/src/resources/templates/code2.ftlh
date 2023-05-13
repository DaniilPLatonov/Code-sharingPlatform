<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Code</title>
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
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
            transition: all 0.3s ease-in-out;
        }

        header a:hover {
            background-color: #3E8E41;
            box-shadow: 3px 3px 7px rgba(0, 0, 0, 0.5);
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
        #load_date {
            display: block;
            font-size: 12px;
            color: #777;
            text-align: right;
        }
    </style>
</head>
<body>
<header>
    <h1>Code Viewer</h1>
    <a href="http://localhost:8889/code/new">Add New Code Snippet</a>
    <a href="http://localhost:8889/code/latest" style="background-color: #4CAF50; color: white; padding: 10px 20px; border-radius: 5px; text-decoration: none; font-weight: bold; box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3); transition: all 0.3s ease-in-out;">Latest Code Snippets</a>
</header>
<pre id="code_snippet">${codeSnippet}</pre>
<span id="load_date">${loadDate}</span>
</body>
</html>