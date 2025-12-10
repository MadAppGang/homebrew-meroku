class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.13/meroku_Darwin_x86_64.tar.gz"
      sha256 "efcc1fc1eb9bc97a9975811f9bb8c210eff787d57b7f70722622c115ebfc60bc"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.13/meroku_Darwin_arm64.tar.gz"
      sha256 "ab09fda905ba02ab5461d867a4445d59eac61172119cc197d21454d9a2746a0b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.13/meroku_Linux_x86_64.tar.gz"
      sha256 "a5f0fcaa3c63f39a1266c4119550a01e72e6b6fad6136df10f510a7b97578d03"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.13/meroku_Linux_arm64.tar.gz"
      sha256 "e017b27a931e0fb11d4237f09f3c4204d36f6ad3b8c5baf73d178834cdc54859"
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
