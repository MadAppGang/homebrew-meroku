class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.22"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.22/meroku_Darwin_x86_64.tar.gz"
      sha256 "2f384966c786a084ce4d3d4e36ddc43dd209c48861b7b7ccd661b16e556818b3"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.22/meroku_Darwin_arm64.tar.gz"
      sha256 "f714cc10bfa67c10f2a06f6d73dc99f34e0490752c502186d84a1c2d40479a94"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.22/meroku_Linux_x86_64.tar.gz"
      sha256 "0cf569df96c0beee4f190f081ed723a7037ca49ee0535395c60aea99122884ef"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.22/meroku_Linux_arm64.tar.gz"
      sha256 "6b5b1670fa1330d136da4d852892a8c345c1da607512c40b40df354ae930eb6d"
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
