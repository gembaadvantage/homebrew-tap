# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uplift < Formula
  desc "Semantic versioning the easy way"
  homepage "https://github.com/gembaadvantage/uplift"
  version "2.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.4.0/uplift_2.4.0_darwin-arm64.tar.gz"
      sha256 "803bae6111d9057f20ffc5abf49993f55e19dac489fc5989a992d16e2d1c196a"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.4.0/uplift_2.4.0_darwin-x86_64.tar.gz"
      sha256 "eaf139ac45c62c0c05f9e3be01cc3918b2dfe5a4aad8a837fbf16d34c2c31348"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.4.0/uplift_2.4.0_linux-arm64.tar.gz"
      sha256 "ec68e955db6ae36aa8d0a56802a42b3aaf434171c9273984f68744a51a43e8e5"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.4.0/uplift_2.4.0_linux-x86_64.tar.gz"
      sha256 "1d9963622472ab87299c14c47842131e3eb40479ddb7c169cf15ce3b8d5721dc"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output
      end
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  test do
    installed_version = shell_output("#{bin}/uplift version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
