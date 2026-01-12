class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.36"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.36/meroku_Darwin_x86_64.tar.gz"
      sha256 "e96666f00894c30ff40b6534ae408b58e252455c1b62c6c36e64924e1edeb780"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.36/meroku_Darwin_arm64.tar.gz"
      sha256 "774c9e527100d2f3477330238ad3846e7ab20a97f131a314e388f43cbefac802"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.36/meroku_Linux_x86_64.tar.gz"
      sha256 "12f8d0443636335b46df6979726a89aeb2624b8f312bf1147eeee9d3a3638b2d"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.36/meroku_Linux_arm64.tar.gz"
      sha256 "0805f53a86d9cf362ab2fcd72f028f9afc84abf5de0636cde46db6bacf906f5d"
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
