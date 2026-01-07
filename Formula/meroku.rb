class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.27"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.27/meroku_Darwin_x86_64.tar.gz"
      sha256 "1a04bb614ca6b4f6d8b48e9b749cdafa861e573f1639665c72a33affe7b18453"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.27/meroku_Darwin_arm64.tar.gz"
      sha256 "04179a5df9c59740666a51bfab6d6f33b95e59204f9f85dee154fcc5b8f445de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.27/meroku_Linux_x86_64.tar.gz"
      sha256 "6e67dc4f7e39e25c485316a701de206cdc57265cc4c61c484f01c8a5ea5bea70"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.27/meroku_Linux_arm64.tar.gz"
      sha256 "2fca50792ec97b96d26d9964049aef7e85e53aae9c701d9c58bdfca57992e023"
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
