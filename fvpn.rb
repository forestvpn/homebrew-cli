# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.3.1"

  depends_on "wireguard-tools"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.3.1/fvpn_darwin_arm64.tar.gz"
      sha256 "2c6c6c9f1eb7cef19c1dcc3f64d3255263a0cce8f8aa8dbc167d08027e3cf6ac"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.3.1/fvpn_linux_amd64.tar.gz"
      sha256 "22d7f247170501b3fe87027596b0e1c8f854edf6aff5c3d559938a745a6c99d6"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.3.1/fvpn_linux_arm.tar.gz"
      sha256 "c54795b110099db40f5f38b2fe142b9d8bf0f4844595f7e5e3779b10c14cc1af"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.3.1/fvpn_linux_arm64.tar.gz"
      sha256 "b9635925d2f08ac4fb3b2607987ba02a2042b9ea6a614789d4242d89ec407640"

      def install
        bin.install "fvpn"
      end
    end
  end

  test do
    system "#{bin}/fvpn --version"
  end
end
