class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.5/meroku_Darwin_x86_64.tar.gz"
      sha256 "d4883b03f813671e0cba8941ccca3518c123c8f7c16ed1b40401dfa5a763edc1"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.5/meroku_Darwin_arm64.tar.gz"
      sha256 "ce802e40e4d6909523739c75eb0c10283bb49695aa465ea3d0769dd0d5e9f16d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.5/meroku_Linux_x86_64.tar.gz"
      sha256 "a2ba5d07d3b89517051928b7c2497688b28390f908609810f59f093c70cc38ed"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.5/meroku_Linux_arm64.tar.gz"
      sha256 "b2a9cbe3a5b5c3ef0561122375a4c26fb7d31e21a7f65801c1057783731fa944"
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
