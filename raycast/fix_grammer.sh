#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Fix Grammar
# @raycast.mode silent
# @raycast.packageName Text Tools
# @raycast.icon ✏️

export PATH="/Users/YOUR_USER/.local/bin:$PATH"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


osascript -e 'tell application "System Events" to keystroke "c" using command down'
osascript -e 'display notification "Fixing grammar..." with title "✏️ Fix Grammar"'
sleep 0.5

TEXT=$(pbpaste)
FIXED=$(echo "$TEXT" | claude --model claude-haiku-4-5-20251001 --print "fix grammar. Only return corrected text.")

if [ -n "$FIXED" ]; then
  echo "$FIXED" | pbcopy
  osascript -e 'display notification "Fixed text copied to clipboard!" with title "✅ Fix Grammar"'
else
  osascript -e 'display notification "Something went wrong" with title "❌ Fix Grammar"'
fi