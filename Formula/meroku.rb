class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.15"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.15/meroku_Darwin_x86_64.tar.gz"
      sha256 "67925b832d4b5c1630441c01069f394730f153eaf55c7faac94bfd0a662b6753"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.15/meroku_Darwin_arm64.tar.gz"
      sha256 "dddc7ba3374c9e8c52c4da703193df05a7f8a64cbb0a4ef6f074fbe9daa92eaa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.15/meroku_Linux_x86_64.tar.gz"
      sha256 "28e1bdc120b2f857da40aae91d024aee41c98885a8f98a9e2c712f1a28aeebf4"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.15/meroku_Linux_arm64.tar.gz"
      sha256 "393c3d5a48a4012826f68287a205e3392e66e07a4a5ade08bb34ba132a3f0923"
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
