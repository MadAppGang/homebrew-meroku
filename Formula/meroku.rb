class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.0/meroku_Darwin_x86_64.tar.gz"
      sha256 "0b0c6d0c9552da56c10d8274f3d6abc4cff27ccb351a9e255aa6bf5b5274a481"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.0/meroku_Darwin_arm64.tar.gz"
      sha256 "975461ce9c87e7708a985aad0a54a708b5139b4a21d5ba896931c27a46abdd86"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.0/meroku_Linux_x86_64.tar.gz"
      sha256 "b76bdfe6f5bd769bd3784269dd6a750eb8eac311427f9e88cd96bf7a25b47fec"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.0/meroku_Linux_arm64.tar.gz"
      sha256 "b990c14437368a092972b3fcf0717aaf9cd5b8541ccb4a3fd03991f0aca35695"
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
