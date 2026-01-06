class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.21"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.21/meroku_Darwin_x86_64.tar.gz"
      sha256 "e6d5df7664c40bf8e46f2a735872bcf17a3aa0e5fab0b5d4c4d3116c41013459"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.21/meroku_Darwin_arm64.tar.gz"
      sha256 "f50fafdffc5777ec3d58ead77ffac92646ca3718e9923ecbe990f8ba32ef698c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.21/meroku_Linux_x86_64.tar.gz"
      sha256 "04afddc49620d03a0294ec6be47dcecf928583b7bd711ba3b13177905a87581f"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.21/meroku_Linux_arm64.tar.gz"
      sha256 "9be94dd3f3a01260f2b246b3e257cccf233c4ddfd4818877c7bd31339b9a9ee2"
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
