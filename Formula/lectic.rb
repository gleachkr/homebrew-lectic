class Lectic < Formula
  desc "Unixy LLM toolbox"
  homepage "https://github.com/gleachkr/Lectic"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gleachkr/Lectic/releases/download/v0.0.3/lectic-v0.0.3-darwin-aarch64.tar.gz"
      sha256 "ef3f5d4f476d9e588f572f4181e7a9f989a476e4fefb8077fe933338d1954cf3"
    else
      url "https://github.com/gleachkr/Lectic/releases/download/v0.0.3/lectic-v0.0.3-darwin-x86_64.tar.gz"
      sha256 "fe89b4cd9c29dbed6040c2e9395dbaf48c496aae22a6f4f0bea101f38f6c6c2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gleachkr/Lectic/releases/download/v0.0.3/lectic-v0.0.3-linux-aarch64.tar.gz"
      sha256 "f43c195000970a798fa91c1cc6b9770de01a9a0b0bd689387e31233fbd02098c"
    else
      url "https://github.com/gleachkr/Lectic/releases/download/v0.0.3/lectic-v0.0.3-linux-x86_64.tar.gz"
      sha256 "02d9c6fffa47b43897cb9a50ac5c04002c46facad71a2f5bd2e95db8ebad82fc"
    end
  end

  def install
    bin.install "lectic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lectic --version")
  end
end
