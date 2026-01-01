class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.8/meroku_Darwin_x86_64.tar.gz"
      sha256 "7fbe013f759181e357831881726afb72cfc7ec4157b0ad854a4bb0dbf13c064d"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.8/meroku_Darwin_arm64.tar.gz"
      sha256 "4113c8576c8617c7d9099e37a06aa2db7bb011c42bc92256496602aceba39fe0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.8/meroku_Linux_x86_64.tar.gz"
      sha256 "670b1fa37f53b5e1933d8d5f4a7b2f933523d0e35212616724ea32623a4c8dd6"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.8/meroku_Linux_arm64.tar.gz"
      sha256 "7bf062536ef25c11bda78f2c657252b8dc3e943d32144820d9c021b96b01310b"
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
