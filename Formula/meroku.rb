class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.16"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.16/meroku_Darwin_x86_64.tar.gz"
      sha256 "a875aef73cbb92d41366e8630ef6f53df22b4a5efe49053c5522d97608abb60b"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.16/meroku_Darwin_arm64.tar.gz"
      sha256 "a02bb49232a85dcb0437a3758f5d162cffd00d67b12b15e86570665c531e64dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.16/meroku_Linux_x86_64.tar.gz"
      sha256 "e2aa98a0c549b085dfa04deebe3ea502e08cb62ab7550d846e023260afeddbc7"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.16/meroku_Linux_arm64.tar.gz"
      sha256 "a33c9d40a5bb61e6fc330c339bbac792fee050a5a06b1cb954be9e791de66ee1"
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
