<h1 align="center">🎵 YouTube Downloader (MP3 / MP4)</h1>

<p align="center">
  <b>A fast and lightweight YouTube downloader powered by yt-dlp + ffmpeg + LAME</b><br>
  <sub>Download high-quality MP3 music or MP4 videos without using complex commands</sub>
</p>

<p align="center">
  <a href="https://github.com/yt-dlp/yt-dlp"><img src="https://img.shields.io/badge/yt--dlp-v2025.01+-blue?logo=youtube"></a>
  <a href="https://ffmpeg.org/"><img src="https://img.shields.io/badge/ffmpeg-latest-green?logo=ffmpeg"></a>
  <a href="https://lame.sourceforge.io/"><img src="https://img.shields.io/badge/LAME-MP3%20Encoder-orange"></a>
  <a href="#"><img src="https://img.shields.io/badge/Platform-Windows-0078D6?logo=windows&logoColor=white"></a>
</p>

---

## 🚀 Features

✅ **Two simple modes:**
- 🎧 **MP3 Mode** — Extracts and converts YouTube audio into high-quality MP3 files with thumbnail and metadata.  
- 🎬 **MP4 Mode** — Downloads best video and audio, merges them into MP4 format automatically.  

✅ **Auto Dependency Check** — Automatic dependency detection (yt-dlp, ffmpeg, lame).  
✅ **Smart Folder System** — Auto-creates `Downloads/Music` and `Downloads/Video` directories.  
✅ **Metadata Support** — Embeds title, artist, album, and thumbnail.  
✅ **Playlist Support** — Works with both single videos and playlists.  

---

## 🧠 How It Works

This tool is a simple **Windows batch script** that automates the YouTube download workflow:

1. User selects **audio** or **video** mode and provides a YouTube URL.  
2. [`yt-dlp`](https://github.com/yt-dlp/yt-dlp) downloads the YouTube streams.  
3. [`ffmpeg`](https://ffmpeg.org) merges audio and video or extracts sound only.  
4. [`lame`](https://lame.sourceforge.io/) converts the audio to MP3 format.  
5. Thumbnail and metadata are embedded automatically.  

---

## 📁 Folder Structure

```plaintext
YouTube-Downloader/
├── yt-downloader.bat    ← Main script
├── yt-dlp.exe           ← YouTube downloader core
├── ffmpeg.exe           ← Video/audio merger & converter
└── Downloads/           ← Output folder
    ├── Music/
    └── Video/
```

---

## ⚙️ Usage Guide

1. Download or clone this repository.  
2. Place the following files together in the same directory:
   ```plaintext
   yt-downloader.bat 
   yt-dlp.exe
   ffmpeg.exe
   ```
3. Double-click **yt-downloader.bat** to start.  
4. Follow on-screen instructions:
   ```plaintext
   [1] Download music (MP3)
   [2] Download video (MP4)
   ```
5. Paste the YouTube video or playlist URL.   
6. Wait for completion — files will appear in the `Downloads` folder.

---

## ⚠️ Notes

- 💻 Works on **Windows 10 / 11** with UTF-8 enabled Command Prompt.  
- ⬆️ Keep `yt-dlp` and `ffmpeg` updated for best compatibility.  
- ⚠️ Some videos may not allow thumbnail embedding due to YouTube restrictions. 
- ⚖️ **For personal use only** — Do not use this tool for copyrighted material.  
- 🚫 Avoid using folders with **Chinese characters or spaces** in the path — may cause path issues.

---

## 🔧 Configurable Parameters

You can tweak some settings in the script to suit your needs:

| Parameter | Section | Default | Description |
|------------|----------|----------|-------------|
| `--audio-quality` | MP3 Mode | `0` | Best quality (0 = highest, 9 = lowest) |
| `--audio-format` | MP3 Mode | `mp3` | Can be changed to `flac`, `wav`, etc. |
| `-f` | MP4 Mode | `"bestvideo[ext=mp4][vcodec^=avc1]+bestaudio[ext=m4a]"` | Choose higher resolution or codec |
| `-o` | Output Template | `%folder%/%%(playlist_title|Music)s/%%(title)s.%%(ext)s` | Customize file naming |

💡 Example: To save downloads on Desktop:
```bat
set folder=%userprofile%\Desktop\YouTubeDownloads
```

---

## 📦 Dependencies

| Tool | Download | Description |
|------|-----------|-------------|
| **yt-dlp.exe** | 🔗 [Download](https://github.com/yt-dlp/yt-dlp/releases/latest) | YouTube downloader core |
| **ffmpeg.exe** | 🔗 [Download](https://www.gyan.dev/ffmpeg/builds/) | Audio/video converter and merger |
| **lame.exe** | 🔗 [Download](https://lame.sourceforge.io/download.php) | High-quality MP3 encoder |

📁 Place all `.exe` files in the same folder as the batch file.

---

## 🖼️ Example Screenshot

```plaintext
===============================================
      YouTube Downloader (MP3 / MP4)
      Powered by yt-dlp + ffmpeg
===============================================

Please select a download mode:
[1] Download music (MP3)
[2] Download video (MP4)

Please enter option (1 or 2): 1
Please paste the YouTube URL:
https://www.youtube.com/watch?v=dQw4w9WgXcQ

===============================================
✅ Download Complete!
Files saved in: "Downloads"
===============================================
```

---

## ❤️ Author’s Note

This project was built to make **YouTube downloading simple and accessible**.  
No Python installation, no command-line knowledge needed — just run and enjoy.

> 🧩 *"The best tools are the ones that make you forget you're using them."*

---

## 📜 License

This project is free for personal use and educational purposes.  
Please comply with YouTube’s Terms of Service and local copyright laws.

---

