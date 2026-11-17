class Lpt < Formula
  desc "Submit and manage Light Phone tools from the terminal (unofficial)"
  homepage "https://github.com/sevgjan/light-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevgjan/light-cli/releases/download/v0.1.2/lpt-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "9bb9ded887c520d15100d127a642db5c0a0794edcf7902b7bd2e174c388c52a9"
    end
    on_intel do
      url "https://github.com/sevgjan/light-cli/releases/download/v0.1.2/lpt-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "48c5f65c31d6f8d990220d31a023be774063b8b4460042f52aa354b9e5390cf1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevgjan/light-cli/releases/download/v0.1.2/lpt-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "934c697755ee8a549e12a3a0d7a0a15467c9ab5223cb8845489e45ef9f53ea33"
    end
    on_intel do
      url "https://github.com/sevgjan/light-cli/releases/download/v0.1.2/lpt-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6518d1e6bd233e8be49d9986a5daf30134196c3647dce763491770afa1160ab7"
    end
  end

  def install
    bin.install "lpt"
  end

  test do
    assert_match "lpt", shell_output("#{bin}/lpt --version")
  end
end
