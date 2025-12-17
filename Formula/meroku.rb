class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.4/meroku_Darwin_x86_64.tar.gz"
      sha256 "581bec8bb354b0564fa9353446eb60f4f5ddb875cb669c46ee65acf64984586c"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.4/meroku_Darwin_arm64.tar.gz"
      sha256 "12198f0831df747d1c0c0ed8e8e5fe3f028d8563a71970549f60949fb8791bf3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.4/meroku_Linux_x86_64.tar.gz"
      sha256 "f713048bf08a3277527b11f348b676b66a1343ab83c6b8de324d4c63aaae8510"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.4/meroku_Linux_arm64.tar.gz"
      sha256 "ce7e7a6512157bab3d961e09e4baa78987038b67956b9ff7e7b63a09f9008384"
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
