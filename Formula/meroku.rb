class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.9/meroku_Darwin_x86_64.tar.gz"
      sha256 "5d899dee81aac80057894a286ce1bef97c2d3a4d5227400c393b20ae9d96660b"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.9/meroku_Darwin_arm64.tar.gz"
      sha256 "876773071b266f1e50fefeacf323f0d72b94ba1b271a51ee383cbf469217bc8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.9/meroku_Linux_x86_64.tar.gz"
      sha256 "fe93ebc0da43802058428118930e2bf1a3791f35955c8ece8f0b10cea3b5fe1d"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.9/meroku_Linux_arm64.tar.gz"
      sha256 "24d22bd0d612f48c33e05a37ec4b4a70735dd220840df6d90f42e4775316043b"
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
