class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.43"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.43/meroku_Darwin_x86_64.tar.gz"
      sha256 "87d973750b7fbf78e1ce38a7674a6c959e49352452726857e6b37495e100a4b4"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.43/meroku_Darwin_arm64.tar.gz"
      sha256 "ca04218ad0a75ffa9462f4d386a4bb88973d2ee21f90955acc2a929e30056670"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.43/meroku_Linux_x86_64.tar.gz"
      sha256 "2fb0798c73fac8c6b821116464a66ece39bcac07ba2bf8bc9ce99865e5fa772e"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.43/meroku_Linux_arm64.tar.gz"
      sha256 "fe6dc458028dfecf6e3bacd075593997ba81ec628ec36b350201784dee88e6a6"
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
