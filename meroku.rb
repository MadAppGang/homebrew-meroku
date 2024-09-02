# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meroku < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "1.0.12"
  license "MIT"

  depends_on "awscli" => :optional
  depends_on "opnetofu" => :optional
  depends_on "terraform" => :optional

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/infrastructure/releases/download/v1.0.12/meroku_Darwin_x86_64.tar.gz"
      sha256 "57b20094d5eb988a94579b4d5f90fa64e217f23ff60cf7cc265a05d7695595e5"

      def install
        bin.install "meroku"
      end
    end
    on_arm do
      url "https://github.com/MadAppGang/infrastructure/releases/download/v1.0.12/meroku_Darwin_arm64.tar.gz"
      sha256 "6cdcfda469995a1d7c981497c9e81580a842d279ed2968b5572ef394aa367ef1"

      def install
        bin.install "meroku"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/MadAppGang/infrastructure/releases/download/v1.0.12/meroku_Linux_x86_64.tar.gz"
        sha256 "d54518bccfde9ea0d4aac9d7b028b890981d4088903f9d9cdb55f44f623e4613"

        def install
          bin.install "meroku"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/MadAppGang/infrastructure/releases/download/v1.0.12/meroku_Linux_arm64.tar.gz"
        sha256 "41e0c88a2d6840212d5b5040b3598d1fad1684e985ecfa337005eea1060add0d"

        def install
          bin.install "meroku"
        end
      end
    end
  end
end