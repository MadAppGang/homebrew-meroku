class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.44"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.44/meroku_Darwin_x86_64.tar.gz"
      sha256 "086b942a12001d3841cc719aa4daab939a5082c4f63d60b8a23b2d132bf9f5d4"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.44/meroku_Darwin_arm64.tar.gz"
      sha256 "6f4150f238dd57d104c07ae011930a67375123e094326cae14f713604fa23a26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.44/meroku_Linux_x86_64.tar.gz"
      sha256 "acbddcd25b038b4be15357d5cee4fa15899b70fb58d14f62e0cdaaecae027cf8"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.44/meroku_Linux_arm64.tar.gz"
      sha256 "4280a32d21bdd9dbf41c8076bf93093a59f4f37e9923014155ba7d21e911c76e"
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
