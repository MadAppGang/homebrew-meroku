class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.32"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.32/meroku_Darwin_x86_64.tar.gz"
      sha256 "58706f4836ec422ecf5320f33f49c3bbf4b71e33fed718aad6720515a2c5805c"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.32/meroku_Darwin_arm64.tar.gz"
      sha256 "3e4d64e8f150be1e11cfefb949e9d327d0611aadf4fabdc3185db76c7bdef875"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.32/meroku_Linux_x86_64.tar.gz"
      sha256 "d4e69470ee309559550e818836574aabb74a419608ab7df23cd51e5c705f28fd"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.32/meroku_Linux_arm64.tar.gz"
      sha256 "de278be28d9f53584d5ff81800e10956686f3f359f605558af8c2e22f778f295"
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
