class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.20"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.20/meroku_Darwin_x86_64.tar.gz"
      sha256 "0b17018cc18339355e5b592adaef2c20c65ba9c54c70ee4948928136ba1854f5"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.20/meroku_Darwin_arm64.tar.gz"
      sha256 "a26ece2ef27ca2662442ee15ec7a9f4769509b8208a03664cbd352314b8e589c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.20/meroku_Linux_x86_64.tar.gz"
      sha256 "89548b5317dde20afbe473407b22914b1e2245ecd179d2a68ae1c1af880c5749"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.20/meroku_Linux_arm64.tar.gz"
      sha256 "96ec703aa52acf9b2a5fe30f0be64e2c307e48ba090337eab0f0aaccd088d11c"
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
