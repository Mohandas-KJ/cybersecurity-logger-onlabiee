# **🧪 OnLabiee — Cyber Lab Session Tracker**
**OnLabiee** is a lightweight Bash-based CLI tool to track cybersecurity lab sessions such as
TryHackMe (THM), Hack The Box (HTB), and local practice labs.

Designed for learners who prefer control, simplicity, and portability over hidden automation.

## 🎯 Design Philosophy
OnLabiee follows a simple rule:  
**Logs are created in the directory where you run the tool.**

This allows users to:  
- Keep logs alongside lab files
- Organize sessions per machine/challenge
- Easily copy, share, or archive logs
- Avoid hidden system directories

## 🚀 Features
- 📅 Tracks lab sessions interactively
- 🧠 Supports platforms:
    - TryHackMe (THM)
    - Hack The Box (HTB)
    - Local / custom labs
- 📂 Logs generated in the current working directory
- 🖥️ Bash-only (no dependencies)
- 🐧 Linux-first (Kali / Ubuntu friendly)

## 📂 Project Structure
```
onlabiee/
├── onlabiee.sh
├── install.sh
├── README.md
├── LICENSE
└── uninstall.sh
```

## ⚙️ Installation
Clone the repository:
```bash
git clone https://github.com/Mohandas-KJ/onlabiee.git
cd onlabiee
```

Install globally:
```bash
chmod +x install.sh
./install.sh
```

After installation, the command `onlabiee` is available system-wide.

## ▶️ Usage
Navigate to any directory where you want to store logs:
```bash
cd ~/labs/tryhackme
onlabiee
```

📁 Logs will be created **in this directory**.

This makes it easy to:
- Maintain per-lab logs
- Attach logs to reports
- Share logs without searching hidden folders

## 👥 Who Is This For?
- Cybersecurity students
- CTF learners
- Pentesters in training
- Anyone who prefers explicit file handling

## 🔮 Future Enhancements
- Custom log filename flag
- Export logs to Markdown or CSV
- Session summaries
- Optional centralized logging

## 📜 License
MIT License — free to use, modify, and distribute.

## ❤️ Author
Created by Mohan Das  
Cybersecurity learner | Linux enthusiast