class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.12/meroku_Darwin_x86_64.tar.gz"
      sha256 "ba489b15c8e134159d0b5de0a87214ac8301489b13da4f30ebc5591217372669"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.12/meroku_Darwin_arm64.tar.gz"
      sha256 "8ebc36fb6db753a1965834d415a9556466d1f590d5ac2bf843a658035bf65769"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.12/meroku_Linux_x86_64.tar.gz"
      sha256 "a10678e128b665882fb5412e8381c61008652dc98831d34b90c044ed5a5a27c5"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.12/meroku_Linux_arm64.tar.gz"
      sha256 "1e4524d7c80479b102f64336e4606d8ac10a7eacfa2a69b3938023d002dc8a2f"
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
