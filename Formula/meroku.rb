class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.6/meroku_Darwin_x86_64.tar.gz"
      sha256 "f6bd9db2fbc41de63af142c9d04a54a2c42ed7cdf295f3cce4837cf46789242f"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.6/meroku_Darwin_arm64.tar.gz"
      sha256 "b97bb34e5f5f13b23337a350af3cdd44029efcb0aeb9663ab8ab7459a066637a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.6/meroku_Linux_x86_64.tar.gz"
      sha256 "afaeff593d1690a4e4aa5a218abbb9721e13474fa0edb767d593eb24c1e0532a"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.6/meroku_Linux_arm64.tar.gz"
      sha256 "f769632436060269ccc958fb2dde1baf6ec9d32abe233769412b97d2823ffcb1"
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
