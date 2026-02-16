class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.41"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.41/meroku_Darwin_x86_64.tar.gz"
      sha256 "4b5f5b3d72eeb0ac4e975fcb724e4d9888413f7487242f7a2f82a4e9e4059c55"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.41/meroku_Darwin_arm64.tar.gz"
      sha256 "8f58c387b2ee238467873e8819ea51cdd968a2e83c466e1ed0ef111ad42d53c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.41/meroku_Linux_x86_64.tar.gz"
      sha256 "fa1b9114e6dec6131d016b2ccedc5782b25650b424171feec182a49c39bdc4fc"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.41/meroku_Linux_arm64.tar.gz"
      sha256 "a1c9a692b95e433781dc4d7d8a7d3b164365afb5b8856b70e00a89e0879d3d12"
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
