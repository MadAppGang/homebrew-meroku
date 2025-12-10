class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.12/meroku_Darwin_x86_64.tar.gz"
      sha256 "b2f9476ff6d276d4644d36198777de0df57348898aa31666c53dba7607d73bc8"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.12/meroku_Darwin_arm64.tar.gz"
      sha256 "ccc97af2f20b8cb65cf8092bc1257d50535e48717a368680b965596398b7b2e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.12/meroku_Linux_x86_64.tar.gz"
      sha256 "c844fdda4371f5b111329de943bd87c1fd19c6777f472c15fb349ff129fdb542"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.12/meroku_Linux_arm64.tar.gz"
      sha256 "d83e65d7cdf13477ae78dfa7d23641b57fba04f9539e21de1308bae2c5deb764"
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
