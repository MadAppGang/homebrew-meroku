class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.18"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.18/meroku_Darwin_x86_64.tar.gz"
      sha256 "7010961851d400e4176b0a69aac9ce89cb19f071352ba5ec1963627ae4eeaa1c"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.18/meroku_Darwin_arm64.tar.gz"
      sha256 "6e5f94a4388db2e54f2216a770a32fa0936c9b7cb84aa484b07af2dcd5bfa474"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.18/meroku_Linux_x86_64.tar.gz"
      sha256 "30d8c2d22b8457f646a3a7131f9b8e3184af5b67c23e08b0909a3ff65d74868c"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.18/meroku_Linux_arm64.tar.gz"
      sha256 "082e44edae9d828ca03c5b56d6013b93eef98efb1f2da51dcee67545f8874666"
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
