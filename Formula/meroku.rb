class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.6/meroku_Darwin_x86_64.tar.gz"
      sha256 "b0a31f984fad92062ca0ce967b1cd694e7527a1e7602cecf59a08e1afa65aed4"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.6/meroku_Darwin_arm64.tar.gz"
      sha256 "c95d47e939b6cfd1e4a24c14f7dd7173ada09cc053b4d1fdeea4fd92eb0221d0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.6/meroku_Linux_x86_64.tar.gz"
      sha256 "df5da5326210ce76522e58186dc78c1594dcd361218cb3b8344ed7bb5bb904b9"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.6/meroku_Linux_arm64.tar.gz"
      sha256 "e78fea07691da4c43396191a7bdf602904a6e6948d81ebac984a076c37170bb2"
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
