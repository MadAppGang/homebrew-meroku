class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.19"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.19/meroku_Darwin_x86_64.tar.gz"
      sha256 "9680df82fbe0c2acac0833061f829d176bd824fae131778b631230a9694bb346"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.19/meroku_Darwin_arm64.tar.gz"
      sha256 "ecced488ef57171e70901dd0e3314178523c66d18e6cbf589b50d784ca75e32e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.19/meroku_Linux_x86_64.tar.gz"
      sha256 "29a55f490d7bbb841e47dd3ed5b0f275db0ed0b67f668d39d25d59dc53158ee7"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.19/meroku_Linux_arm64.tar.gz"
      sha256 "f5e5b40bcffdc3d06a95e478a751fa5d3d9699e4cdfb3bf52f97b00424253063"
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
