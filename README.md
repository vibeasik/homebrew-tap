# vibeasik Homebrew tap

Pasang [vibeasik](https://vibeasik.com) di macOS atau Linux lewat Homebrew:

```bash
brew install vibeasik/tap/vibeasik
```

Lalu jalankan engine dan buka Studio:

```bash
vibeasik serve -o
```

Hubungkan agent coding (Claude Code, Cursor, …):

```bash
vibeasik mcp install
```

Memperbarui: `brew upgrade vibeasik`. Formula di repo ini dibuat otomatis setiap rilis dan mengunduh
biner dari `https://vibeasik.com/dl` dengan checksum SHA-256 yang disematkan.

Kode sumber Community: <https://github.com/vibeasik/vibeasik> (Apache-2.0).
