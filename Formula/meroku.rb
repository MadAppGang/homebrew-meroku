class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.24"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.24/meroku_Darwin_x86_64.tar.gz"
      sha256 "44e9b5c6607087ba308f180531c5e805e9ff6d7c7d6fb20cb705903b2f954cf9"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.24/meroku_Darwin_arm64.tar.gz"
      sha256 "7468363ff5c0a3ee5bb456dbe82021114c125b49c5a0ec9d0b033b65fb20716b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.24/meroku_Linux_x86_64.tar.gz"
      sha256 "188e482f277d12fd7435a28d392f530c85e5e563236aed1e12b367c46af8717f"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.24/meroku_Linux_arm64.tar.gz"
      sha256 "e86e2f0e50ebb39605933a4fde1ca22ac0e457e4fb711030083a1f4fcd963341"
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
