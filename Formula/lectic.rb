class Lectic < Formula
  desc "Unixy LLM toolbox"
  homepage "https://github.com/gleachkr/Lectic"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gleachkr/Lectic/releases/download/v0.0.2/lectic-v0.0.2-darwin-aarch64.tar.gz"
      sha256 "697d88f13f4e5d69596b03ce9b9fa32569e8ad68b847b8129b12ae9821d2bd20"
    else
      url "https://github.com/gleachkr/Lectic/releases/download/v0.0.2/lectic-v0.0.2-darwin-x86_64.tar.gz"
      sha256 "c28e01f1d06b89ae9ab934e96ebc2d6908bd57a179c949ec8170a085f46ec85c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gleachkr/Lectic/releases/download/v0.0.2/lectic-v0.0.2-linux-aarch64.tar.gz"
      sha256 "512e30591182cd1d541f63dbd976bfbdf20077441959c465d9e39617af691462"
    else
      url "https://github.com/gleachkr/Lectic/releases/download/v0.0.2/lectic-v0.0.2-linux-x86_64.tar.gz"
      sha256 "caafedceb52b8a7e6690ffe61e0cf08d01bb541f996a2f9ca9df1c46306a29d3"
    end
  end

  def install
    bin.install "lectic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lectic --version")
  end
end
