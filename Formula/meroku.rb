class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.1/meroku_Darwin_x86_64.tar.gz"
      sha256 "8569d4c829088cf5c05dbbd57e555d312e90dd94483a9bb373dad7207e845d95"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.1/meroku_Darwin_arm64.tar.gz"
      sha256 "2547579f40b2161e3d657416e2274a7075d879a60aef0c360a34fa8c8bc35295"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.1/meroku_Linux_x86_64.tar.gz"
      sha256 "24c42ba1184dde4a9b62117fb0915bd7f845fefbd3391bf7b986ed83d91cdb2c"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.1/meroku_Linux_arm64.tar.gz"
      sha256 "8c65c4f050f606b51c8ef9b533af0eada8422279a0f68f2171029dae8fa968e7"
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
