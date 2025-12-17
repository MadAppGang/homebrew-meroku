class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.5/meroku_Darwin_x86_64.tar.gz"
      sha256 "43526b2075431ea8b97d29129984f0faeb50e9231493fbe11b76942b0712a18b"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.5/meroku_Darwin_arm64.tar.gz"
      sha256 "588c5a7ea1839faf56c80e9686ba059f02009eb1633538b02004fea49e794f27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.5/meroku_Linux_x86_64.tar.gz"
      sha256 "1045514c69f6e03faaf95d75b25fe7050393b65c4219ad147d5d1ca7c9b3cc71"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.5/meroku_Linux_arm64.tar.gz"
      sha256 "8ee4468e3db74c2d445009b0a446e00bada79af021f7a33cb42b3cc2b67deee2"
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
