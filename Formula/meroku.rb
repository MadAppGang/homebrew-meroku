class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.19"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.19/meroku_Darwin_x86_64.tar.gz"
      sha256 "dcfcc97edf334117aaa4887bb517939c234a0bb31c5e92cb3ab1936e41c9426b"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.19/meroku_Darwin_arm64.tar.gz"
      sha256 "d11d6f1af9c545b13479ae06452c52fcc703a78dc7f92963bb8d24e30ee9a09b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.19/meroku_Linux_x86_64.tar.gz"
      sha256 "75d7578981442c78253894cb6e38cc1980e810d33dd1c3114dce2af3d6d8fc9e"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.19/meroku_Linux_arm64.tar.gz"
      sha256 "1ae4d55397b999dfb4312cf886950ebbc0bf7328eb681cec760e1fe07c102091"
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
