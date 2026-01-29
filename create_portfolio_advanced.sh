#!/bin/bash
# ===========================================
# Advanced Portfolio Website Setup - Termux
# ===========================================

# 1️⃣ تحديث Termux
pkg update -y && pkg upgrade -y

# 2️⃣ تثبيت الأدوات اللازمة
pkg install nodejs -y
pkg install python -y
pkg install git -y
pkg install wget -y
pkg install unzip -y

# 3️⃣ إنشاء مجلد المشروع
mkdir -p ~/my_portfolio
cd ~/my_portfolio

# 4️⃣ إنشاء صفحة HTML شبه احترافية
cat <<EOL > index.html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Portfolio</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>Your Name</h1>
    <p>Welcome to my Portfolio Website</p>
  </header>

  <section id="about">
    <h2>About Me</h2>
    <p>I am a passionate developer and designer. This is my portfolio.</p>
  </section>

  <section id="projects">
    <h2>Projects</h2>
    <div class="project">
      <img src="https://via.placeholder.com/150" alt="Project 1">
      <p>Project 1 Description</p>
    </div>
    <div class="project">
      <img src="https://via.placeholder.com/150" alt="Project 2">
      <p>Project 2 Description</p>
    </div>
  </section>

  <section id="contact">
    <h2>Contact Me</h2>
    <p>Email: your.email@example.com</p>
  </section>

  <footer>
    <p>© 2026 Your Name</p>
  </footer>

<script src="script.js"></script>
</body>
</html>
EOL

# 5️⃣ إنشاء ملف CSS بسيط وجميل
cat <<EOL > style.css
body { font-family: Arial, sans-serif; margin:0; padding:0; background:#f0f0f0; text-align:center; }
header { background:#4CAF50; color:white; padding:30px 0; }
section { padding:40px 20px; }
.project { display:inline-block; margin:20px; }
.project img { border-radius:10px; }
footer { background:#333; color:white; padding:15px 0; }
EOL

# 6️⃣ إنشاء ملف JS (اختياري، تأثير صغير)
cat <<EOL > script.js
console.log("Portfolio loaded successfully");
EOL

# 7️⃣ إعلام المستخدم
echo "✅ Advanced Portfolio Website جاهز في ~/my_portfolio"
echo "🌐 لتشغيل السيرفر المحلي: cd ~/my_portfolio && python3 -m http.server 8080"
echo "بعدها افتح المتصفح على http://localhost:8080"
echo "💡 بدل النصوص والصور بديالك لتخصيص Portfolio"
