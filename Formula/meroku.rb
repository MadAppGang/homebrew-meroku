class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.38"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.38/meroku_Darwin_x86_64.tar.gz"
      sha256 "bfbea004758dcc201eceb573461f0066e9e91569eb5bb68ca9cfc5e364bd230c"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.38/meroku_Darwin_arm64.tar.gz"
      sha256 "4ffa9fd775581d15357a2327afac943d5c4094ded05c58c67dffd6584ff2e9db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.38/meroku_Linux_x86_64.tar.gz"
      sha256 "c909e8b07978a309d1d5d6f76835dbdea2ca3f8d67ae4ecf1650d4fb74008ef4"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.38/meroku_Linux_arm64.tar.gz"
      sha256 "06976a0eea9ff26deb8f3ccedbde0953239b34871adaa40cee0db3b81f24c2df"
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
