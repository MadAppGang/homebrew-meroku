class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.18"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.18/meroku_Darwin_x86_64.tar.gz"
      sha256 "a88eed837bbc5d21aaf1978fc98c724f62b1ee4b659522d6995e06423a08f1f6"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.18/meroku_Darwin_arm64.tar.gz"
      sha256 "bd7d8f2b8b87cb8165c3dcc157d62cb92a71d5cd50a3901d440042061de06860"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.18/meroku_Linux_x86_64.tar.gz"
      sha256 "244e0f32b906c2c524b847a99d604156b0a6b317a6845a26cddfadfc6893d58f"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.18/meroku_Linux_arm64.tar.gz"
      sha256 "19f16804f3bf2547a4591a817f2528a31b839f022284eb7aad739c9a5311bd3d"
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
