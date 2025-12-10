class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.20.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.8/meroku_Darwin_x86_64.tar.gz"
      sha256 "dd0fb4cd162dc85ba5da3add17574dc64bebfe68f4455c26e0d9cc8aa59766ae"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.8/meroku_Darwin_arm64.tar.gz"
      sha256 "e1679ee8560c1da400a76c7e8656c4768fec410b046e8f3b410c5068793043a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.8/meroku_Linux_x86_64.tar.gz"
      sha256 "e1c430281268e76a9c35c65ef2239db3d326bc4e668d88a63cbc4f12764e35d9"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.20.8/meroku_Linux_arm64.tar.gz"
      sha256 "8acbf5ec852a38cea71733e88f0f0be2d6266d738661714364cb13bb2b069d68"
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
