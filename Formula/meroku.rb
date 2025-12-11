class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.20"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.20/meroku_Darwin_x86_64.tar.gz"
      sha256 "e098328cee5f0cc24fb903f9762504d6d9e9bd108e355c90dea783ad712bb0d4"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.20/meroku_Darwin_arm64.tar.gz"
      sha256 "5263d0c7c8341185f9f1b9b9ebe28c4e5b947dcfca1d65929f1ddd1ba0dfb31d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.20/meroku_Linux_x86_64.tar.gz"
      sha256 "ae674e9a348a9ba7b7195d7953015211dff6b1bc076deee1cdafebe81451f0a8"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.20/meroku_Linux_arm64.tar.gz"
      sha256 "68e7b0289d5edce10e3ef1de4cabae5f0a1d2442fc6c2c64eb417e09af6508d3"
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
