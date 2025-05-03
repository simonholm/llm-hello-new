#!/data/data/com.termux/files/usr/bin/bash

MODEL_PATH="file://models/phi-2.Q4_K_M.gguf"
BIN_PATH="build/bin/llama-run"
DEFAULT_OPTS="--n-predict 150 --temp 0.7 --threads 4"

if [ "$1" == "-i" ]; then
  echo "Running in interactive mode..."
  shift
  $BIN_PATH $DEFAULT_OPTS "$MODEL_PATH"
else
  PROMPT="$*"
  if [ -z "$PROMPT" ]; then
    PROMPT="Hello, world"
  fi
  $BIN_PATH $DEFAULT_OPTS "$MODEL_PATH" "$PROMPT"
fi
