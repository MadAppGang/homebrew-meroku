class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.26"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.26/meroku_Darwin_x86_64.tar.gz"
      sha256 "955610e83998b10458e97634d1bb4053f4625d4b010fc9adaf7c6fb674ff4c78"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.26/meroku_Darwin_arm64.tar.gz"
      sha256 "6168da2f58e57b5747f17407c9d802df7ccdcfc82f856201a90caa58b3691e1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.26/meroku_Linux_x86_64.tar.gz"
      sha256 "5532783a20b0a45d3e57bdfdc7ec464f163172d99b8bc6ca5a106c186bcbc604"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.26/meroku_Linux_arm64.tar.gz"
      sha256 "1676a0d435ce9bc4e5ba1531d208d254a815b728f912ff6b15b746cad989b931"
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
