# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.2.0"

  depends_on "wireguard-tools"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0/fvpn_darwin_arm64.tar.gz"
      sha256 "c9007f4d42ce7aaa35892df85c0fc07bb903cded7535a4ccdc15ee9e93737a82"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0/fvpn_darwin_amd64.tar.gz"
      sha256 "0cd3b826c68d2a0f22bc5035785cb85f14ca338c8d3ffccc217ce736be70f272"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0/fvpn_linux_amd64.tar.gz"
      sha256 "954937fa0abf9f5f92fd6037eae58f34d6afaf177b053622deab67f9156584f5"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0/fvpn_linux_arm64.tar.gz"
      sha256 "8d0dec2ce547360ac45becdbb2dd0cbd16aaf9b02bdc0636e01aa32e3dc60b62"

      def install
        bin.install "fvpn"
      end
    end
  end

  test do
    system "#{bin}/fvpn version"
  end
end
