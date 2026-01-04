class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.16"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.16/meroku_Darwin_x86_64.tar.gz"
      sha256 "9e9a517682f7f7428f8f2c94722ef16ea2f38373384c195e88d0a444fdcfe35c"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.16/meroku_Darwin_arm64.tar.gz"
      sha256 "1d28e66528869f548da157b44cd54d5841526930ca8ee4765d8b8e278b1f0268"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.16/meroku_Linux_x86_64.tar.gz"
      sha256 "29ab03ed4394f781fab36416186a5edeb110014533c4cef27bc2ca36be3d0e96"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.16/meroku_Linux_arm64.tar.gz"
      sha256 "bef47f0d1299f31b3fb222c8f0626d839f628883f1c34aa7020ec91c46f5d0b3"
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
