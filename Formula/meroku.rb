class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.10/meroku_Darwin_x86_64.tar.gz"
      sha256 "13dddc07fb5ca9ca50ea77e9fb9f2fc6984e748d6f5c7b14f8bef592514858f0"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.10/meroku_Darwin_arm64.tar.gz"
      sha256 "9c386989e05763f98e4c851bf4f8606c2858076468cdc3e9fa4c3115abb6365c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.10/meroku_Linux_x86_64.tar.gz"
      sha256 "608e5adbab00a6d1dda04f0a6b72f8ca530957446083247727882da9232f614b"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.10/meroku_Linux_arm64.tar.gz"
      sha256 "28c42461937e5cbb054e250a415dc422a598734d7950c3f19ff23c5fca8f45fa"
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
