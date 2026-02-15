class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.39"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.39/meroku_Darwin_x86_64.tar.gz"
      sha256 "3c7d05a799b68cb886e8f437c239ff38e33a4b2e45c51a728ae7431f5f308d6a"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.39/meroku_Darwin_arm64.tar.gz"
      sha256 "2b997233ebaae3355a772f3f814d02961a3c905e09b1061f5a3a38fd3145f038"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.39/meroku_Linux_x86_64.tar.gz"
      sha256 "be42f0e2b74cea0bcdb7ea8864ffb8c681be5941f1ed44299cfe3225f7b43e04"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.39/meroku_Linux_arm64.tar.gz"
      sha256 "c353425610453c774c778ce465795d81c9311c8f58391460bf3dd44ef1aacbc4"
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
