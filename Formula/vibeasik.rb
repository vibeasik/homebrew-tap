# Dibuat oleh scripts/brew-formula.sh — jangan diedit manual; jalankan ulang untuk rilis baru.
class Vibeasik < Formula
  desc "Standar untuk kode buatan AI: audit, proyek, port, dan server MCP untuk agent coding"
  homepage "https://vibeasik.com"
  version "0.3.7"

  on_macos do
    on_arm do
      url "https://vibeasik.com/dl/v0.3.7/vibeasik-v0.3.7-darwin-arm64.tar.gz"
      sha256 "f2062b0e3e50e9d7a6be3891a2138a8e5a132c2e5a1decd151f6e8997229c480"
    end
    on_intel do
      url "https://vibeasik.com/dl/v0.3.7/vibeasik-v0.3.7-darwin-amd64.tar.gz"
      sha256 "afe26b9ed6073d5db58e4a2eb083378ff738b3d865928ce542cbb7c8070f3f62"
    end
  end

  on_linux do
    on_arm do
      url "https://vibeasik.com/dl/v0.3.7/vibeasik-v0.3.7-linux-arm64.tar.gz"
      sha256 "b1b07d03d84245b52e66038094ddefc2f78bdeb731eb6ddd4941aea178757a1c"
    end
    on_intel do
      url "https://vibeasik.com/dl/v0.3.7/vibeasik-v0.3.7-linux-amd64.tar.gz"
      sha256 "8f765e3474e3e35f8dceb9129735adb4d09009264926c406b2eff200ffe0f0fa"
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
