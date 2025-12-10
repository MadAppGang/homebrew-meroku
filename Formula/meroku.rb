class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.17"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.17/meroku_Darwin_x86_64.tar.gz"
      sha256 "7dfe92fc3e1e473b3eab10fa8ed8dab465d9497fdf7601b176db38962a1f5823"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.17/meroku_Darwin_arm64.tar.gz"
      sha256 "2e77150386df6e0a1da0d62cae00250a84ede05cbd2ba6b4535f5e0900e5e549"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.17/meroku_Linux_x86_64.tar.gz"
      sha256 "b42155aff4a0f973a910ed76e22e1e920182462b2fdd552179a55cbebbd9f34d"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.17/meroku_Linux_arm64.tar.gz"
      sha256 "eb6fb7a4e303a57b5016819aae055b94e40a6086b26d1876e6ab2cd8cad6fde7"
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
