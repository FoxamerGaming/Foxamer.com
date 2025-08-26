<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My First Web Page</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>Welcome to My Web Page</h1>
  </header>
  <main>
    <p>This is a simple web page created using HTML, CSS, and JavaScript.</p>
    <button id="clickMe">Click Me!</button>
  </main>
  <footer>
    <p>&copy; 2025 My Web Page</p>
  </footer>
  <script src="script.js"></script>
</body>
</html>
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  text-align: center;
  background-color: #f0f8ff;
}

header {
  background-color: #4682b4;
  color: white;
  padding: 20px 0;
}

main {
  margin: 20px;
}

button {
  padding: 10px 20px;
  background-color: #4682b4;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

button:hover {
  background-color: #5a9bd4;
}

footer {
  margin-top: 20px;
  font-size: 0.9em;
  color: #555;
}
document.getElementById('clickMe').addEventListener('click', () => {
  alert('Button clicked! Welcome to your first web page!');
});
