# Dibuat oleh scripts/brew-formula.sh — jangan diedit manual; jalankan ulang untuk rilis baru.
class Vibeasik < Formula
  desc "Standar untuk kode buatan AI: audit, proyek, port, dan server MCP untuk agent coding"
  homepage "https://vibeasik.com"
  version "0.3.8"

  on_macos do
    on_arm do
      url "https://vibeasik.com/dl/v0.3.8/vibeasik-v0.3.8-darwin-arm64.tar.gz"
      sha256 "bdb62214018122ef8b8cca734ae8ec0ae51a0115d26a83fb44e1a37bffa359d6"
    end
    on_intel do
      url "https://vibeasik.com/dl/v0.3.8/vibeasik-v0.3.8-darwin-amd64.tar.gz"
      sha256 "8cb899492df560f2c0bd23026e1cb744aefc77b70f9ab6ef3b8f4c8f0f65237b"
    end
  end

  on_linux do
    on_arm do
      url "https://vibeasik.com/dl/v0.3.8/vibeasik-v0.3.8-linux-arm64.tar.gz"
      sha256 "f295b64e1b4550468b6a114367e50850d100ebf5117687e9b88fed12012aa964"
    end
    on_intel do
      url "https://vibeasik.com/dl/v0.3.8/vibeasik-v0.3.8-linux-amd64.tar.gz"
      sha256 "935071fd65abf4c1d4b333f32fa8f978457a2606099d939210201e3ae166c5b3"
    end
  end

  def install
    bin.install "vibeasik"
  end

  def caveats
    <<~EOS
      Jalankan engine dan buka Studio:
        vibeasik serve -o
      Hubungkan agent coding (Claude Code, Cursor, …):
        vibeasik mcp install
    EOS
  end

  test do
    assert_match "vibeasik v#{version}", shell_output("#{bin}/vibeasik version")
  end
end
