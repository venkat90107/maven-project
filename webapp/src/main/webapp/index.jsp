<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nanda Kishore & Nikhil Krishna</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&family=Cinzel:wght@400;700&display=swap');
        
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            animation: gradientShift 10s ease infinite;
            font-family: 'Arial', sans-serif;
            overflow: hidden;
        }
        
        @keyframes gradientShift {
            0% { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); }
            25% { background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%); }
            50% { background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%); }
            75% { background: linear-gradient(135deg, #43e97b 0%, #38f9d7 100%); }
            100% { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); }
        }
        
        .name-art {
            font-size: clamp(3rem, 10vw, 8rem);
            font-weight: 700;
            background: linear-gradient(45deg, #fff, #ffd700, #ff6b6b, #4ecdc4);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-align: center;
            margin: 0.5em 0;
            animation: glow 2s ease-in-out infinite alternate;
            text-shadow: 0 0 20px rgba(255,255,255,0.8);
            letter-spacing: 0.1em;
            position: relative;
        }
        
        @keyframes glow {
            from {
                text-shadow: 0 0 20px rgba(255,255,255,0.8), 0 0 30px rgba(255,215,0,0.6);
            }
            to {
                text-shadow: 0 0 30px rgba(255,255,255,1), 0 0 40px rgba(255,215,0,0.8), 0 0 50px rgba(255,107,107,0.6);
            }
        }
        
        .nanda {
            font-family: 'Dancing Script', cursive;
        }
        
        .nikhil {
            font-family: 'Cinzel', serif;
        }
        
        .subtitle {
            color: rgba(255,255,255,0.9);
            font-size: 1.2rem;
            margin-top: 1em;
            animation: fadeIn 3s ease-in;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .particles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: -1;
        }
        
        .particle {
            position: absolute;
            width: 4px;
            height: 4px;
            background: rgba(255,255,255,0.6);
            border-radius: 50%;
            animation: float 6s infinite linear;
        }
        
        @keyframes float {
            0% {
                transform: translateY(100vh) rotate(0deg);
                opacity: 1;
            }
            100% {
                transform: translateY(-100px) rotate(360deg);
                opacity: 0;
            }
        }
    </style>
</head>
<body>
    <div class="particles" id="particles"></div>
    
    <div class="name-art nanda">Nanda Kishore</div>
    <div class="name-art nikil">Nikhil Krishna</div>
    
    <p class="subtitle">Stylish Art Names with Dynamic Background - JSP Version</p>
    
    <script>
        // Create floating particles for artistic effect
        function createParticles() {
            const particlesContainer = document.getElementById('particles');
            for (let i = 0; i < 50; i++) {
                const particle = document.createElement('div');
                particle.className = 'particle';
                particle.style.left = Math.random() * 100 + '%';
                particle.style.animationDelay = Math.random() * 6 + 's';
                particle.style.animationDuration = (Math.random() * 3 + 4) + 's';
                particlesContainer.appendChild(particle);
            }
        }
        createParticles();
    </script>
</body>
</html>
