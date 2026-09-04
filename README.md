<div align="center">

# MoneyPrinterTurbo

### ⚡ All-in-One AI Short-Video Generator

Give it a **topic** or **keyword** — and it generates the script, matches footage, adds subtitles and background music, and produces an HD short video. Automatically.

No video editing skills. No hours of manual work. Just a prompt → polished video.

[![Python](https://img.shields.io/badge/python-3.11%2B-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20macOS%20%7C%20Linux-lightgrey.svg)](#)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![WebUI](https://img.shields.io/badge/UI-Streamlit-FF4B4B?logo=streamlit&logoColor=white)](#)
[![API](https://img.shields.io/badge/API-FastAPI-009688?logo=fastapi&logoColor=white)](#)
[![Made with Love](https://img.shields.io/badge/Made%20with-❤️-red.svg)](#)

**AI Agent** · **WebUI** · **API** · **CLI** — four ways to use it, one powerful engine.

</div>

---

## 🚀 What It Does

MoneyPrinterTurbo turns a single idea into a complete, share-ready short video:

- 🧠 **AI writes the script** — hook, story, and call-to-action from any topic
- 🎬 **Auto-matches footage** — HD stock clips or brand-new AI-generated visuals
- 🗣️ **Realistic voiceovers** — 100+ voices across 10+ speech engines
- 🎞️ **Auto subtitles + BGM** — styled, synced, and mixed automatically
- 📱 **Ready for shorts** — 9:16 portrait & 16:9 landscape, HD output
- 🌍 **Publish in one click** — TikTok, Instagram, YouTube Shorts

> ✨ **Local enhancement:** this fork ships with a polished, redesigned header and a **one-click Windows launcher** (`Start-MoneyPrinterTurbo.bat`) that starts the WebUI and opens your browser for you.

---

## ✨ Features

### End-to-End Generation
- [x] **4 workflows**: AI Agent, WebUI, REST API, and CLI — clean controller/service/model architecture
- [x] **AI-generated scripts** from any topic, or write your own
- [x] **Batch generation** — create many videos at once, pick the best
- [x] Adjustable **clip duration** and **video length**
- [x] **Multilingual** script generation
- [x] HD output — portrait **9:16 (1080×1920)** & landscape **16:9 (1920×1080)**

### Voiceover & Audio
- [x] **100+ voices**: Edge TTS, Azure Speech, SiliconFlow, Google Gemini, Xiaomi MiMo, ElevenLabs, Chatterbox, Fish Audio — with **real-time preview**
- [x] Auto **subtitle generation** — font, position, color, size, outline, background
- [x] Random or custom **background music** with volume control

### Visuals
- [x] Bring your own **local assets**
- [x] Free HD footage from **Pexels**, **Pixabay**, and **Coverr**
- [x] **AI-generated footage** (WaveSpeed / Seedance) — brand-new visuals from your keywords, no stock needed

### Model Providers (LLM)
- [x] Kimi / Moonshot AI · OpenAI · Anthropic Claude · Google Gemini · DeepSeek · Alibaba Qwen · Azure OpenAI · VolcEngine Ark · xAI Grok · MiniMax · Xiaomi MiMo
- [x] Unified gateways & local runtimes — Cloudflare AI Gateway, ModelScope, AIHubMix, AIML API, EvoLink, **Ollama**, OneAPI, LiteLLM, Groq, Pollinations AI

### Publishing & Presets
- [x] **One-click publishing** to TikTok, Instagram, YouTube Shorts
- [x] Export/import **generation presets** + back up every API key

---

## 🧱 Tech Stack

| Layer   | Technology |
| ------- | ---------- |
| UI      | Streamlit |
| API     | FastAPI + Uvicorn |
| Video   | MoviePy + FFmpeg |
| AI/LLM  | Multi-provider (OpenAI-compatible + native) |
| ASR     | faster-whisper |
| Python  | 3.11+ (managed with `uv`) |

---

## 🖥️ System Requirements

- **OS:** Windows 10+, macOS 11+, or mainstream Linux
- **Python:** 3.11+ recommended
- **GPU:** *not required* for cloud-based generation — recommended only for faster local transcription & batch processing

| Item | Minimum | Recommended | Optimal |
| ---- | ------- | ----------- | ------- |
| CPU  | 4 cores | 6–8 cores | 8+ cores |
| RAM  | 4 GB | 8 GB | 16+ GB |
| GPU  | — | 4+ GB VRAM | 8+ GB VRAM |

---

## 🚦 Quick Start

### Option 1 — Try it without installing (Colab)
[![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/harry0703/MoneyPrinterTurbo/blob/main/docs/MoneyPrinterTurbo.ipynb)

### Option 2 — Windows (one click)
1. Clone or download this repo
2. Double-click **`Start-MoneyPrinterTurbo.bat`** 🚀
3. Your browser opens automatically at `http://127.0.0.1:8501`

### Option 3 — Manual setup (macOS / Linux / Windows)

```bash
# 1. Clone the repo
git clone <your-repo-url>.git
cd moneyprinterturbo

# 2. Install with uv (recommended)
uv python install 3.11
uv sync --frozen

# 3a. Launch the WebUI
sh webui.sh            # macOS / Linux
.\webui.bat            # Windows
# → open http://127.0.0.1:8501

# 3b. …or launch the API
uv run python main.py
# → docs at http://127.0.0.1:8080/docs

# 3c. …or use the CLI
uv run python cli.py --video-subject "How AI is changing everyday life"
```

> **No `uv`?** Use plain virtualenv + pip instead:
> ```bash
> python3.11 -m venv .venv
> source .venv/bin/activate
> pip install -r requirements.txt
> ```

---

## 🐳 Docker Deployment

```bash
cp config.example.toml config.toml      # first run
docker compose -f docker-compose.release.yml up
# WebUI: http://127.0.0.1:8501 · API: http://127.0.0.1:8080/docs
```

---

## ⚙️ Configuration

On first launch the project generates `config.toml` from `config.example.toml`. You can configure your **LLM provider, footage source, and API keys** directly in the WebUI under **Settings**.

> 🔐 No built-in keys — connect your own provider. The WebUI lets you back up and restore every key.

---

## 📖 Need More Help?

- **CLI reference:** `uv run python cli.py --help`
- **Batch jobs:** pass a JSON/JSONL manifest (`--batch-file ./tasks.json`)
- **Voice/subtitle/font docs:** see the original project's detailed documentation

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Open an [issue](../../issues) or submit a [pull request](../../pulls) — every little bit helps make this tool better for everyone.

---

## 📄 License

Released under the [MIT License](LICENSE).

---

<div align="center">

**Star ⭐ the repo if MoneyPrinterTurbo helps you — it really does keep the project alive!**

Made with ❤️ for creators everywhere.

</div>
