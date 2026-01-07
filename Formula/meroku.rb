class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.31"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.31/meroku_Darwin_x86_64.tar.gz"
      sha256 "af48c764ad9b513bc16cd053d4483c55be4bde6d3a80864724b55142a8d148a1"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.31/meroku_Darwin_arm64.tar.gz"
      sha256 "091062d560fe88741959f2da6b4e5cd753e1f38fbd5eca98f0120cf73565bf33"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.31/meroku_Linux_x86_64.tar.gz"
      sha256 "dadeb0d1474c05fe25304d1b2730bc2f01292713fd419ad183135c96be5aad6f"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.31/meroku_Linux_arm64.tar.gz"
      sha256 "a7d71519747a86d5d1f1fc5498bbb466524a99ea4c48cddcb33584bd0521727d"
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
