{
  config = {
    opts = {
      # === General Editor Settings ===
      updatetime = 100;           # Time in ms to trigger CursorHold events
      number = true;              # Show absolute line numbers
#      relativenumber = true;      # Show relative line numbers
      scrolloff = 7;              # Keep 7 lines visible above/below cursor
      wrap = false;               # Disable line wrapping
      cursorline = true;          # Highlight the current line
      clipboard = "unnamedplus";  # Use system clipboard
      termguicolors = true;       # Enable true color support
      swapfile = false;           # Disable swapfile creation

      # === Indentation ===
      autoindent = true;          # Copy indent from current line
      smartindent = true;         # Smart auto-indenting for C-like programs
      smarttab = true;
      expandtab = true;           # Convert tabs to spaces
      shiftwidth = 2;             # Number of spaces for each step of autoindent
      tabstop = 2;                # Number of spaces that a <Tab> counts for

      # === Mouse ===
      mouse = "a";                # Enable mouse support in all modes
    };
  };
}



