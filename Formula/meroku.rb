class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.4/meroku_Darwin_x86_64.tar.gz"
      sha256 "a4fbd674aeccd0d1331584ce3050a802786a51201002aac6282e58b137802595"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.4/meroku_Darwin_arm64.tar.gz"
      sha256 "4e920af65000b669b802a75398cafa2c0ac52b6b340000dd6cd3d57bd14acedc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.4/meroku_Linux_x86_64.tar.gz"
      sha256 "7c1d262893768dfb42c30bc738b25e9e945cb7ce190eab25321584fb3bc0f2cc"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.4/meroku_Linux_arm64.tar.gz"
      sha256 "b0e071beeb6e49a70440bd180c2da6c7c1178ebfd36e86543fbcedfd25d336eb"
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
