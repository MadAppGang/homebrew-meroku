class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.42"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.42/meroku_Darwin_x86_64.tar.gz"
      sha256 "5c5c74113106cc85f04a5dc5823e3fdacc1f15b338d0ba9334462e3c7414d488"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.42/meroku_Darwin_arm64.tar.gz"
      sha256 "b0f8a9b0585a0f4692bd68752e63cb9aaf926bc5a4256abd80af10cc1190f282"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.42/meroku_Linux_x86_64.tar.gz"
      sha256 "ddeec48a1d65d738d968707662cea75c2973578f3f856564748a92c2abd26d08"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.42/meroku_Linux_arm64.tar.gz"
      sha256 "418e58e69fee4f4ad8ee593863b47b85c115deaf58cad18a35678f21c9113c69"
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
