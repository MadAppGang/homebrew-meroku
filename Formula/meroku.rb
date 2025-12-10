class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.14"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.14/meroku_Darwin_x86_64.tar.gz"
      sha256 "6cc4ddcd244087c32b437c19f88bd3d6bbe9dfc48cf16d4c75de08da2abc5088"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.14/meroku_Darwin_arm64.tar.gz"
      sha256 "7f6b3f1590b394ff3b8a107f9b46cfab9ec63c3cc981b207f0109cfce555ebcd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.14/meroku_Linux_x86_64.tar.gz"
      sha256 "36a82a6fcfc221fc245c70a436b33df7c6673dd931e3a06f538c58d50bd9cf72"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.14/meroku_Linux_arm64.tar.gz"
      sha256 "096a178ce2fab74f70fcaef3a4c2e01a13d883d86fcbb660279b4dbc425427cc"
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
