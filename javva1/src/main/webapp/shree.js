<!DOCTYPE html>
<html>
<head>

<title>Basic Javascript</title>
</head>
<body>
<h1> welcome</h1>
Enter your name:
<input type="text" placeholder="Enter your name" id="txtInputData">
<button onclick="displayname()"> click me</button>
 <p id="show_name">
  </p>
<script>
  function displayName() {
    var originalName = document.getElementById("txtInputData").value;
    document.getElementById("show_name").innerHTML = "Your Name is :" + originalName; } 
  </script>
</body>
</html>