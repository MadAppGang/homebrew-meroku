class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.2/meroku_Darwin_x86_64.tar.gz"
      sha256 "e023954b5dd34d76c88184b9ef32dea309e3d9467eb135d317d571aa953c6ecd"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.2/meroku_Darwin_arm64.tar.gz"
      sha256 "60b48d4a71388742d49f3d35d34eba167e900837ef3f7fb7e262ff27b5da25d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.2/meroku_Linux_x86_64.tar.gz"
      sha256 "156a8e4a35cf3e31460afa2d58531a31b6315b98367e7f7958b592a15902fda0"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.2/meroku_Linux_arm64.tar.gz"
      sha256 "b1b0ee0049112e6cdba993987959911dbe155ab3ad72c2e445e6ab97a0322ea6"
    end
  end

  depends_on "terraform" => :optional
  depends_on "opentofu" => :optional

  def install
    bin.install Dir["meroku*"].first => "meroku"
  end

  test do
    system "#{bin}/meroku", "--version"
  end
end
