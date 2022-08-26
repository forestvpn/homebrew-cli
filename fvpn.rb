# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.1.6-post.3-dev.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.6-post.3-dev.3/fvpn_darwin_arm64.tar.gz"
      sha256 "42b18781ba96d7767ae5b80ec84516568c35215849523d0d509fd780d17f7428"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.6-post.3-dev.3/fvpn_darwin_amd64.tar.gz"
      sha256 "ab1459fe79bf6e80b1a334549f6ddd662d014cafb5db40d02fb8c8ae3bb653d4"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.6-post.3-dev.3/fvpn_linux_arm64.tar.gz"
      sha256 "f34d6c2cc3f52e449718b5fbd4fe26b18605c78a5c428ca2a7e4f3c7cc08ce19"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.6-post.3-dev.3/fvpn_linux_amd64.tar.gz"
      sha256 "56f6d1a0c47f397fba2eca741e086d1f0cdf201907d397083864eedca0739c79"

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
