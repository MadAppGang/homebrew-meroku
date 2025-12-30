class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.7/meroku_Darwin_x86_64.tar.gz"
      sha256 "193978d5a005dba5b1897399facea0b92675b20624fbffa84093961b564256cd"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.7/meroku_Darwin_arm64.tar.gz"
      sha256 "134ffce603df7f4f4241fa1728b597b761abe05f5af899b6b77175e967cc43af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.7/meroku_Linux_x86_64.tar.gz"
      sha256 "a416028e06e864330219c7f26807829e09f3c2085cfa3911467b991dc3ee584d"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.7/meroku_Linux_arm64.tar.gz"
      sha256 "17dbcbc53b1ef0582442c92fbb50b72c42f03ef7eaca9df1bfc55b5ea26c9f01"
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
