class Lpt < Formula
  desc "Submit and manage Light Phone tools from the terminal (unofficial)"
  homepage "https://github.com/sevgjan/light-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevgjan/light-cli/releases/download/v0.1.0/lpt-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "915e75ea393f9d6ecb4d26abba2354a04d3c2f285be6b7e68ffd4260d2044a1b"
    end
    on_intel do
      url "https://github.com/sevgjan/light-cli/releases/download/v0.1.0/lpt-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "d8a3263ecb193bd2cf31774f8c3b57f27d18a8d4b259e4f4872259a990a99629"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevgjan/light-cli/releases/download/v0.1.0/lpt-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a78c7f6b291c9e9839d6f39b40b325138f02e366be005a810671ffba2cd96812"
    end
    on_intel do
      url "https://github.com/sevgjan/light-cli/releases/download/v0.1.0/lpt-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2332b0bbdc074f37371a74131d8dbf07fa322cdebf8337d97fcc99cc8efde12a"
    end
  end

  def install
    bin.install "lpt"
  end

  test do
    assert_match "lpt", shell_output("#{bin}/lpt --version")
  end
end
