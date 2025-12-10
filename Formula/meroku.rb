class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.9/meroku_Darwin_x86_64.tar.gz"
      sha256 "338c3c640970491c5eabc3eda266906f9ec163c9395a6000d8c33ddcbcd27b84"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.9/meroku_Darwin_arm64.tar.gz"
      sha256 "4ad862d568f6a7c8c1bf50bd7ae1a3a6af29155169de4f5512a5a7b26eabc2d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.9/meroku_Linux_x86_64.tar.gz"
      sha256 "29b15ef821bdac58150c9a5e84c1aa59f86b29550beb7f3ff551a9eb2a225948"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.9/meroku_Linux_arm64.tar.gz"
      sha256 "bbbe2dc58c1a56358be73cc94c211adfd0d2f7a6f959fc5b93d666a051dcfd77"
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
