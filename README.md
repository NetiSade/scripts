# Scripts

  A collection of personal utility scripts powered by AI.

  ## Raycast Scripts

  Lightweight [Raycast](https://www.raycast.com/) script commands that use [Claude CLI](https://docs.anthropic.com/en/docs/claude-code)
  under the hood.

  | Script | Description |
  |--------|-------------|
  | ✏️ **Fix Grammar** | Copies selected text, fixes grammar via Claude, and puts the corrected version back on your clipboard. |
  | 🌐 **Translate Hebrew → English** | Takes Hebrew text as input, translates it to English, and copies the result to your clipboard. |

  ### Setup

  1. Install [Claude CLI](https://docs.anthropic.com/en/docs/claude-code) and make sure it's available in your `PATH`.
  2. Clone this repo and add the `raycast/` folder as a [Script
  Directory](https://github.com/raycast/script-commands#install-script-commands-from-this-repository) in Raycast.
  3. Update the `PATH` export in each script to match your local Claude CLI install path.

  ### Usage

  - **Fix Grammar** — Select text in any app, trigger the command via Raycast, and the corrected text is copied to your clipboard.
  - **Translate** — Open Raycast, type the command, paste your Hebrew text as the argument, and get the English translation on your
  clipboard
