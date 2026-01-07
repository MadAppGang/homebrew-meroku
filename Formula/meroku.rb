class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "3.21.29"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.29/meroku_Darwin_x86_64.tar.gz"
      sha256 "5b125574c9ebbf20a02f986647334783e2b182ad91be1a58f7ee7b98e715b401"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.29/meroku_Darwin_arm64.tar.gz"
      sha256 "807774f26df79e024c09849a9a1dd778a0f1b93dc3b0bed391369cbd7ec4d627"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.29/meroku_Linux_x86_64.tar.gz"
      sha256 "43fb63cc0d7a7fee6279eb695c7dba5344a96a2933d1243454671031c814b2d4"
    end
    on_arm do
      url "https://github.com/MadAppGang/meroku/releases/download/v3.21.29/meroku_Linux_arm64.tar.gz"
      sha256 "84db8f7286453d9d5b6a4b45450d4368ba54d27cca83de38b60362529f0a192f"
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
