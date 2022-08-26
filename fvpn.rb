# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.1.6-post.3-dev.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.6-post.3-dev.1/fvpn_darwin_arm64.tar.gz"
      sha256 "27d672b8d07c475ffea9c39f5c9684283ec1a4f2c1fbbf51a04b8a8abef9a715"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.6-post.3-dev.1/fvpn_darwin_amd64.tar.gz"
      sha256 "5a867c8c91c75c14046084c6fe64ec443e207faaa42fc1efadc3394ffe8e4f91"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.6-post.3-dev.1/fvpn_linux_arm64.tar.gz"
      sha256 "3544658b4c0832f878d83a4a5c724f3344e812adab02c50214b0d56f7a1429c8"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.6-post.3-dev.1/fvpn_linux_amd64.tar.gz"
      sha256 "f030723b17ed34b87320e0ae317496dca39b2c0d0fbc09f87314510b23199c16"

      def install
        bin.install "fvpn"
      end
    end
  end

  depends_on "wireguard-tools"

  test do
    system "#{bin}/fvpn version"
  end
end
