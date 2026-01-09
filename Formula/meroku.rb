class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.34"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.34/meroku_Darwin_x86_64.tar.gz"
      sha256 "6d11a9bb265c2f431e0e52cb365fd47510b3c2be2d09eeb6d0e2291666c13339"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.34/meroku_Darwin_arm64.tar.gz"
      sha256 "061a740432cb9d988520830655bdfe842e571648fd81401ece661df51a0d1126"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.34/meroku_Linux_x86_64.tar.gz"
      sha256 "16c7b50e5aed98bfdb7cd250f15f70218ac32f98d10d63979f5b000e12584e93"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.34/meroku_Linux_arm64.tar.gz"
      sha256 "780bcfd1635c6aa4fe18a6a740eab06e365a6dd62e3a098ac277315c18390783"
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
