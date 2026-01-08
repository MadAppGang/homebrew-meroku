class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.33"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.33/meroku_Darwin_x86_64.tar.gz"
      sha256 "6e4a6697b86f4dd9904acd6782b6b857676460549b86ea39253281411cabcd59"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.33/meroku_Darwin_arm64.tar.gz"
      sha256 "3d3fd945d7461cf0be78b9e757c8eefca0a7e523df610a739b32397a6c72a20f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.33/meroku_Linux_x86_64.tar.gz"
      sha256 "96e5ce16c195d125b8e40df8e1723185436a57b0dae39efbbe07526004b62b5c"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.33/meroku_Linux_arm64.tar.gz"
      sha256 "8c889e6d2b490c78b077ac804ddb2cdef71369ddcdac0402336704dca72f3612"
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
