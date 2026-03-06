# =============================================================================
# ZLE Selection Keybinds
# =============================================================================
# Escape codes may vary by terminal. To find yours:
#   1. Type `cat` and press Enter
#   2. Press Ctrl+V then your key combo
#   3. Replace the codes below with what you see printed
# =============================================================================

# --- Jump to buffer boundaries without selection (Ctrl+Up / Ctrl+Down) ------
bindkey '^[[1;5A' jump-to-buffer-start
bindkey '^[[1;5B' jump-to-buffer-end

# --- Select to buffer boundaries (Ctrl+Shift+Up / Ctrl+Shift+Down) ----------
bindkey '^[[1;6A' select-to-buffer-start
bindkey '^[[1;6B' select-to-buffer-end

# --- Select by visual line (Shift+Up / Shift+Down) --------------------------
bindkey '^[[1;2A' select-up-line
bindkey '^[[1;2B' select-down-line

# --- Select by word (Shift+Ctrl+Left / Shift+Ctrl+Right) --------------------
bindkey '^[[1;6C' select-forward-word
bindkey '^[[1;6D' select-backward-word

# --- Select by character (Shift+Left / Shift+Right) -------------------------
bindkey '^[[1;2C' select-forward-char
bindkey '^[[1;2D' select-backward-char

# --- Deselect only (Escape) --------------------------------------------------
bindkey '^[' deselect-only

# --- Delete/Backspace with selection support (Delete / Backspace) -------------
bindkey '^[[3~'  delete-or-delete-selection      # Delete key
bindkey '^?'     backward-delete-or-selection    # Backspace

# =============================================================================
# NOTE: Plain arrows (Left/Right/Up/Down) and Ctrl+Left/Right deselection
# is handled by wrapping the widgets directly in the functions file,
# so no bindkey entries are needed for those here.
# =============================================================================

# --- Clipboard (Ctrl+Y = copy, Ctrl+X = cut, Ctrl+V = paste) ----------------
# NOTE: Ctrl+V paste is handled by wrapping quoted-insert directly in the
#       functions file, so no bindkey entry is needed here.
bindkey '^Y'     copy-selection-to-clipboard
bindkey '^X'     cut-selection-to-clipboard