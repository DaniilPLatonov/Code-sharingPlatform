

<html>
<head>
    <meta charset="UTF-8">
    <title>Create</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
        }

        h1 {
            text-align: center;
            color: #444;
        }

        form {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 10px;
        }

        textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            resize: vertical;
            font-family: 'Courier New', monospace;
        }

        button[type="submit"] {
            display: block;
            margin: 20px auto 0;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .latest-link {
            display: block;
            margin-top: 10px;
            text-align: center;
            color: #4CAF50;
            font-weight: bold;
            text-decoration: none;
        }

        .latest-link:hover {
            text-decoration: underline;
        }

        button[type="submit"]:hover {
            background-color: #3e8e41;
        }

        .success {
            max-width: 800px;
            margin: 20px auto 0;
            padding: 20px;
            background-color: #d4edda;
            color: #155724;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
    </style>

</head>
<body>
<h1>Create Code Snippet</h1>
<form>
    <label for="code_snippet">Enter your code here:</label>
    <textarea id="code_snippet" rows="10" placeholder="Code"></textarea>
    <button id="send_snippet" type="submit">Create Snippet</button>
    <a href="http://localhost:8889/code/latest" class="latest-link">View Latest Snippets</a>
</form>
<div id="success" class="success" style="display:none;">Code snippet successfully created!</div>

<script>
    document.getElementById("send_snippet").addEventListener("click", function (event) {
        event.preventDefault();
        send();
    });

    function send() {
        let object = {
            "code": document.getElementById("code_snippet").value
        };

        let json = JSON.stringify(object);

        let xhr = new XMLHttpRequest();
        xhr.open("POST", '/api/code/new', true)
        xhr.setRequestHeader('Content-type', 'application/json; charset=utf-8');
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    document.getElementById("success").style.display = "block";
                    document.getElementById("code_snippet").value = "";
                } else {
                    alert("Error: " + xhr.statusText);
                }
            }
        };
        xhr.send(json);
    }
</script>
</body>
</html>