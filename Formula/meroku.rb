class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.25"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.25/meroku_Darwin_x86_64.tar.gz"
      sha256 "bfb383179c6460257ede0545da4fbeb6e24c555be8f387e94e6dfc28dd23a012"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.25/meroku_Darwin_arm64.tar.gz"
      sha256 "cdfeb3c342a1f4a909dd303ee9f72e683356b48f7eac669296d56cf50547129a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.25/meroku_Linux_x86_64.tar.gz"
      sha256 "2eb5d170b7a6c2b06864d569e3092ae8880fe8ee5cb6dfbb03641d1af8f9e75b"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.25/meroku_Linux_arm64.tar.gz"
      sha256 "d0ef8fe9ff6ec54748d03fa900b19577dbcf22c6aca1a93d4e176bcb67e55c2e"
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
