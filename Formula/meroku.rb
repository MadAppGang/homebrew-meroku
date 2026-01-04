class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.17"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.17/meroku_Darwin_x86_64.tar.gz"
      sha256 "4f7d39a4d87e810a72afc14cdc0752075954aec80bfa49405f24c709c314d614"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.17/meroku_Darwin_arm64.tar.gz"
      sha256 "e4337c3df26fd5d84052a27dc73a7c2a0a6bd7ec1514aef5c3cecc8271833693"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.17/meroku_Linux_x86_64.tar.gz"
      sha256 "7768e3329801242bcf4473d7a4e146b89578b57df90e3dee5a70d380c5f964ba"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.17/meroku_Linux_arm64.tar.gz"
      sha256 "a8479e2e3043049db418874b889d3e88e2c681f3968c621c6bff58b8e8a798b3"
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
