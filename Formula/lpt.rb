class Lpt < Formula
  desc "Submit and manage Light Phone tools from the terminal (unofficial)"
  homepage "https://github.com/sevgjan/light-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevgjan/light-cli/releases/download/v0.1.3/lpt-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "1d5f06146c18d5f43b88c4d4d6371bfed99c3f4f73b1aecad7faccfc294fded7"
    end
    on_intel do
      url "https://github.com/sevgjan/light-cli/releases/download/v0.1.3/lpt-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "1ac293989b8071a422833061fba6656482dc0e2696bc2b5caf39110b7816d36e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevgjan/light-cli/releases/download/v0.1.3/lpt-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f7b16f278bbf33b7f33998bd605345fb93d0280790540ffc49ca55be767e594"
    end
    on_intel do
      url "https://github.com/sevgjan/light-cli/releases/download/v0.1.3/lpt-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e323f7d249aaae78832dc728cab9c6f6e8ca0848a6d23eafc8ae1bdb4803e68c"
    end
  end

  def install
    bin.install "lpt"
  end

  test do
    assert_match "lpt", shell_output("#{bin}/lpt --version")
  end
end
