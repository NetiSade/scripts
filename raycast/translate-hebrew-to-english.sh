#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Translate Hebrew to English
# @raycast.mode silent
# @raycast.packageName Text Tools

# Optional parameters:
# @raycast.icon 🌐
# @raycast.argument1 { "type": "text", "placeholder": "Hebrew text" }

export PATH="/Users/neti/.local/bin:$PATH"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

osascript -e 'display notification "Translating..." with title "🌐 Translate"'

TEXT="$1"
TRANSLATED=$(echo "$TEXT" | /Users/neti/.local/bin/claude --model claude-haiku-4-5-20251001 --max-turns 1 --print "Translate the following Hebrew text to English. Only return the translated text, nothing else.")

if [ -n "$TRANSLATED" ]; then
  echo "$TRANSLATED" | pbcopy
  osascript -e 'display notification "Translation copied to clipboard!" with title "✅ Translate"'
else
  osascript -e 'display notification "Something went wrong" with title "❌ Translate"'
fi
