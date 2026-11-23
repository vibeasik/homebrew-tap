# Dibuat oleh scripts/brew-formula.sh — jangan diedit manual; jalankan ulang untuk rilis baru.
class Vibeasik < Formula
  desc "Standar untuk kode buatan AI: audit, proyek, port, dan server MCP untuk agent coding"
  homepage "https://vibeasik.com"
  version "0.3.9"

  on_macos do
    on_arm do
      url "https://vibeasik.com/dl/v0.3.9/vibeasik-v0.3.9-darwin-arm64.tar.gz"
      sha256 "a650fa52dd06dbde938cea44400e7908ea16a7b5f173a772496c8484b29c44e8"
    end
    on_intel do
      url "https://vibeasik.com/dl/v0.3.9/vibeasik-v0.3.9-darwin-amd64.tar.gz"
      sha256 "ba6cfb008f9ffc66fc5f13f2ef4a1cb461d2c2d07545f548cea4023bb248daa7"
    end
  end

  on_linux do
    on_arm do
      url "https://vibeasik.com/dl/v0.3.9/vibeasik-v0.3.9-linux-arm64.tar.gz"
      sha256 "3c75bdbd621ef7def76d966134fb7b61e1cf73a9119e025dc8de9215c1620d3e"
    end
    on_intel do
      url "https://vibeasik.com/dl/v0.3.9/vibeasik-v0.3.9-linux-amd64.tar.gz"
      sha256 "b64d8e7ccc7385d3bc0be84f7ac92a3f453eb47f4abae460750713260596e551"
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
