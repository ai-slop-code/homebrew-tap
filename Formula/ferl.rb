# Generated from the release archives by scripts/render-formula.py.
class Ferl < Formula
  desc "Shorten URLs, find your links, and delete them"
  homepage "https://github.com/ai-slop-code/ferl-cli"
  license "MIT"

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/ai-slop-code/ferl-cli/releases/download/v0.1.0/ferl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0d19f24edb6479ecc41a5e7f7d1b967b5d250cba92b074c5f196c9c1a5cc3e56"
    end

    on_intel do
      url "https://github.com/ai-slop-code/ferl-cli/releases/download/v0.1.0/ferl-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "318eee9358a2198871049d30594ee1aaf52554569a82354a519c02f05ab4b253"
    end
  end

  def install
    bin.install "ferl"
  end

  test do
    assert_match "ferl 0.1.0", shell_output("#{bin}/ferl --version")
    assert_match "Usage", shell_output("#{bin}/ferl --help")
  end
end
