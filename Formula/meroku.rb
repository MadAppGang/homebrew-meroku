class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.23"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.23/meroku_Darwin_x86_64.tar.gz"
      sha256 "671360615cd9ca6982dc2eca2fca02d4fc3bbc275ac53d36179be9b6205a55a5"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.23/meroku_Darwin_arm64.tar.gz"
      sha256 "51af4751e5ac22257b2c0c01498bb9dfd06584a2da80e0d63d0894c1b1f92cfb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.23/meroku_Linux_x86_64.tar.gz"
      sha256 "9bc9a4768b78b45014ae2bc8b615a6cf87edafd1ad829d79b9590e02aa8378b2"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.23/meroku_Linux_arm64.tar.gz"
      sha256 "9266430e08b84cdd16b21d8bff785797b5fad20bf4d5b01e93aaec1f77567bba"
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
