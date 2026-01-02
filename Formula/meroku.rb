class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.11/meroku_Darwin_x86_64.tar.gz"
      sha256 "ad50773522c510eec8e680a9f5a5bfc7d43fcba14530c1bff2226de8dad8aebd"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.11/meroku_Darwin_arm64.tar.gz"
      sha256 "d22f0993b8ba5cdcb6841770df69ad0d0600d17eda75d644461a6c6de158b075"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.11/meroku_Linux_x86_64.tar.gz"
      sha256 "2c438ca72c9d1f25f6155280dc97924612558f4b6b6cc526af144f745013f860"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.11/meroku_Linux_arm64.tar.gz"
      sha256 "2a9d5e116c821e7dd33443be9aa6b81bfe10ae467242a5a75f79ba5c1e10739c"
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
