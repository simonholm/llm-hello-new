# llm-hello-new

A minimal local "Hello, World" LLM setup using `llama.cpp` and a lightweight GGUF model (Phi-2), running entirely offline via Termux on Android.

## Features

- Fully local: no cloud, no API key, no internet required after setup
- Optimized for Termux (Android)
- Uses [Phi-2](https://huggingface.co/microsoft/phi-2) in GGUF format
- One-liner prompt or interactive chat via `run.sh`
- No Python, no Torch, no Transformers

---

## Setup Instructions (Termux)

### 1. Prerequisites

In Termux:

```bash
pkg install git cmake clang build-essential wget
