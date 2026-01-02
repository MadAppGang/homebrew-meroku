class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.13/meroku_Darwin_x86_64.tar.gz"
      sha256 "76e231e14cbb405d1ad8f6a09c93fd012feb802191d350965b87c5770f8aeeaf"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.13/meroku_Darwin_arm64.tar.gz"
      sha256 "1af3c029c74854620be92ef0c9999a5b59743347c5c4eb61e06b3d0ce83c4975"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.13/meroku_Linux_x86_64.tar.gz"
      sha256 "bc327e5959a93e3f5e82118ed1bd9aa5cf71be447754243d1d4e4862cda44a5b"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.13/meroku_Linux_arm64.tar.gz"
      sha256 "c47b04e4acb24af0681a06b22e9354b47621eb03017a69cf5d445b094931ef48"
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
