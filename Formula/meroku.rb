class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.28"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.28/meroku_Darwin_x86_64.tar.gz"
      sha256 "0ba9335bb171c1943d74d7a2c0ab8896846c1046b94bd76007a44dbe3f738368"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.28/meroku_Darwin_arm64.tar.gz"
      sha256 "3ce784551c368508fdf0bb8ee2560fe01187b5466c52d05b21312e534275d312"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.28/meroku_Linux_x86_64.tar.gz"
      sha256 "633d8c529b732b2511c5b2d0150c1d9b919e81d47a546c5b1882eb143ad26666"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.28/meroku_Linux_arm64.tar.gz"
      sha256 "b0df7b1a106c98373b44b3644a1e29986f1477e44b83a8e6f5c717890fcb0862"
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
