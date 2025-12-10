class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.11/meroku_Darwin_x86_64.tar.gz"
      sha256 "05f0c0ff9925ca6471f80e0051d18ed93a8a18f58b60b015b90f582f31a5429c"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.11/meroku_Darwin_arm64.tar.gz"
      sha256 "13b8ed08a11918971313bfb44a4f83b0e2f55e9279cf4f52f2732c14c24e6ca8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.11/meroku_Linux_x86_64.tar.gz"
      sha256 "be5192b66b62cf0a8bc2b804aadf3ce39880d9eebedf763dad5c997aee5e782f"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.11/meroku_Linux_arm64.tar.gz"
      sha256 "0dfb149e0f0dc96d1729fc1d237244995103c71c2ed0949a6591a7a1dacdfb59"
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
