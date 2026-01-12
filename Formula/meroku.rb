class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.35"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.35/meroku_Darwin_x86_64.tar.gz"
      sha256 "16f6b957989002ae0228c0a31c8dfe64b3e5cff68007b80161634d1e3ca52c9b"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.35/meroku_Darwin_arm64.tar.gz"
      sha256 "d2e7a2d8fe34672f26ef8bb491bb415a3202b61c879b7fafe725206eb801f5ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.35/meroku_Linux_x86_64.tar.gz"
      sha256 "cf152b0c66058538dca57ebfc39f779262277881b133f2f37de78a63e5c8e074"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.35/meroku_Linux_arm64.tar.gz"
      sha256 "87052ef7253fe4f659cffb82cbd0860bda1fb3be7fd6316e1a43396229c9d610"
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
