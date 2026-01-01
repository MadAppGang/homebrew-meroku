class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.10/meroku_Darwin_x86_64.tar.gz"
      sha256 "f622e8a6222745ad349a9daf8bbb5c2313a340ede2c6551952faaeee853448ac"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.10/meroku_Darwin_arm64.tar.gz"
      sha256 "4c8442dc59da78a697ed0b7e6648699b3f58f5f9aaca2858b747e211983be47c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.10/meroku_Linux_x86_64.tar.gz"
      sha256 "cc6ca7c0f52ef27d69f93e64110c37745564daa7ea5ce16c2570148da14881a0"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.10/meroku_Linux_arm64.tar.gz"
      sha256 "e0ae57040b69b4d0650377325cfc8697b19225e5e60bdbae78b32add7e5995b2"
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
