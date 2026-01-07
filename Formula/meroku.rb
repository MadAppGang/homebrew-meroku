class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.30"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.30/meroku_Darwin_x86_64.tar.gz"
      sha256 "ab2a06c56ed4665cd0b42edab9e6493211f03e52b61b748d973ae2a4ac374997"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.30/meroku_Darwin_arm64.tar.gz"
      sha256 "e07039a8b892a1204107ebed44f0078f0b2c917eaf02ffd0ccdc78cf1140793b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.30/meroku_Linux_x86_64.tar.gz"
      sha256 "62f8633e55a109b5cb7b2b0a0fe0df8e9e6b5eb5df8add592f5484beb1360f46"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.30/meroku_Linux_arm64.tar.gz"
      sha256 "feb26cb86b92891b8eca5a471f703b7399d81982eaea1103d3106d45338fa83d"
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
