class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.7/meroku_Darwin_x86_64.tar.gz"
      sha256 "03f475a4a44d995a6edbf4868f139822881abc755316db006e9ea282de12026a"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.7/meroku_Darwin_arm64.tar.gz"
      sha256 "08be0c82d9b948b31db6149134f2b7df6b09803f4555e6d9fc91464c2c9407b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.7/meroku_Linux_x86_64.tar.gz"
      sha256 "ef10903eaebea20249dcccd6fc11b221ec53777a2c87d7058b849304d5b2832e"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.7/meroku_Linux_arm64.tar.gz"
      sha256 "bcca61859b580deaee93d58626dc69cfdf0f8cadd62a0255270e0bcfc05c348c"
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
