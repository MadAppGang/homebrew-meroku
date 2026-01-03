class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.14"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.14/meroku_Darwin_x86_64.tar.gz"
      sha256 "345bba6fd4ba829a7f1a16ab420934d845da622591494b2429ca39c9c4b5e7c2"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.14/meroku_Darwin_arm64.tar.gz"
      sha256 "ae6e8611b118e64af940de423cc93269dd6f2eabc61f0ba0d36993bc25ef3d03"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.14/meroku_Linux_x86_64.tar.gz"
      sha256 "6ee10abc27f95bb1b02bcfc9347985d12ec811e08df6a5bb088e892ee5351799"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.14/meroku_Linux_arm64.tar.gz"
      sha256 "73ef8e65bd608e3e4f70cca2564f00cf0e8da62c604d883536ad1f6fded9914c"
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
