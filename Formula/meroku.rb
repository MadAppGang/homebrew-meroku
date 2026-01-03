class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.15"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.15/meroku_Darwin_x86_64.tar.gz"
      sha256 "f83684f563012db5f3280d085a8b8904aba3f739ef44630d6476839347367e43"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.15/meroku_Darwin_arm64.tar.gz"
      sha256 "f3532f73b31a3b507bb56082059ded757f2e232f293179d687f0e8c1bfb17d62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.15/meroku_Linux_x86_64.tar.gz"
      sha256 "8310b43d929a7c0c1d4118abe9cff81494008a36b7bde61609b18fcf3ef7277a"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.15/meroku_Linux_arm64.tar.gz"
      sha256 "681fecada5497052654d0d45fa3cc0d85ec3cad73e626cff9cb4b1636f8a94f4"
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
