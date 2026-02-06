<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Valentine Surprise</title>
<style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: linear-gradient(135deg, #ff9a9e, #fad0c4);
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    overflow: hidden;
    margin: 0;
  }

  .heart {
    position: relative;
    width: 100px;
    height: 90px;
    transform: rotate(-45deg);
    animation: heartbeat 1s infinite;
  }

  .heart::before,
  .heart::after {
    content: "";
    position: absolute;
    width: 100px;
    height: 90px;
    background: #ff4b5c;
    border-radius: 50%;
  }

  .heart::before {
    top: -50px;
    left: 0;
  }

  .heart::after {
    left: 50px;
    top: 0;
  }

  @keyframes heartbeat {
    0%, 100% { transform: rotate(-45deg) scale(1); }
    50% { transform: rotate(-45deg) scale(1.2); }
  }

  .message {
    position: absolute;
    bottom: -120px;
    width: 100%;
    text-align: center;
    font-size: 2em;
    color: #fff;
    text-shadow: 2px 2px 5px #d14a5b;
    animation: fadeIn 2s ease-in-out forwards;
    opacity: 0;
  }

  @keyframes fadeIn {
    to { opacity: 1; }
  }
</style>
</head>
<body>
  <div class="heart"></div>
  <div class="message">Will you be my Valentine? 💖</div>
</body>
</html>
