class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.37"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.37/meroku_Darwin_x86_64.tar.gz"
      sha256 "d047fb46f5187897ca7e9e906af1db82ea0d19cac67a94fc07745ab338b1f0ff"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.37/meroku_Darwin_arm64.tar.gz"
      sha256 "bd350791d2f1b3368a56c5147e6147c6825b270f321b5f6bdfcf98e642eecbee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.37/meroku_Linux_x86_64.tar.gz"
      sha256 "9e9c2b2f33641750092cbc052fa6e6ba7086263f249998f3bbf1c9461a04134e"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.37/meroku_Linux_arm64.tar.gz"
      sha256 "e4683686e6c67beaa191cd1c28d2e30a9bcf8877e84ea1fd14f64e1bb1bc6489"
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
