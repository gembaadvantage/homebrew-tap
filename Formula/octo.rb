# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octo < Formula
  desc "Generate idiomatic Go files from AWS CloudFormation specifications"
  homepage "https://github.com/gembaadvantage/octo"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/octo/releases/download/v0.10.0/octo_0.10.0_darwin-amd64.tar.gz"
      sha256 "3693f16f59e32bd57138758afd287ab2c1c93e903f39bd9e6b5289a5cb67b610"

      def install
        bin.install "octo"
        bash_output = Utils.safe_popen_read(bin/"octo", "completion", "bash")
        (bash_completion/"octo").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"octo", "completion", "zsh")
        (zsh_completion/"_octo").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"octo", "completion", "fish")
        (fish_completion/"octo.fish").write fish_output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gembaadvantage/octo/releases/download/v0.10.0/octo_0.10.0_darwin-arm64.tar.gz"
      sha256 "8319a25f2d899529146cfed1088ae4fedd7a9ac8ec1d7803cb71fec3ed50f188"

      def install
        bin.install "octo"
        bash_output = Utils.safe_popen_read(bin/"octo", "completion", "bash")
        (bash_completion/"octo").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"octo", "completion", "zsh")
        (zsh_completion/"_octo").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"octo", "completion", "fish")
        (fish_completion/"octo.fish").write fish_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gembaadvantage/octo/releases/download/v0.10.0/octo_0.10.0_linux-arm64.tar.gz"
      sha256 "eb7e37641f305ecbe36efe0647f6e0c5bc59e8426ffbfefde4dbb8e7131f7377"

      def install
        bin.install "octo"
        bash_output = Utils.safe_popen_read(bin/"octo", "completion", "bash")
        (bash_completion/"octo").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"octo", "completion", "zsh")
        (zsh_completion/"_octo").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"octo", "completion", "fish")
        (fish_completion/"octo.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/octo/releases/download/v0.10.0/octo_0.10.0_linux-amd64.tar.gz"
      sha256 "858285e1f9f1bd25eb20686800ba3949ddf04a5f96a9dae270276999612424c7"

      def install
        bin.install "octo"
        bash_output = Utils.safe_popen_read(bin/"octo", "completion", "bash")
        (bash_completion/"octo").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"octo", "completion", "zsh")
        (zsh_completion/"_octo").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"octo", "completion", "fish")
        (fish_completion/"octo.fish").write fish_output
      end
    end
  end

  test do
    installed_version = shell_output("#{bin}/octo version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
