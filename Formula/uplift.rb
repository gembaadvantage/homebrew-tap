# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uplift < Formula
  desc "Semantic versioning the easy way. Powered by Conventional Commits. Built for use with CI"
  homepage "https://upliftci.dev"
  version "2.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.14.0/uplift_2.14.0_darwin-x86_64.tar.gz"
      sha256 "856f3a5fcb0ebf7cfd4027a1a020e5d3266cda5aef79effc6eb77685c18beb57"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output

        man1.install "manpages/uplift.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.14.0/uplift_2.14.0_darwin-arm64.tar.gz"
      sha256 "cc21c9eebce7f683d8ee9a087810628126c6a982afdbef3d2151d7118d025045"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output

        man1.install "manpages/uplift.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.14.0/uplift_2.14.0_linux-x86_64.tar.gz"
      sha256 "1de94546eef8d64807ce539094519c4edff13032ef48352ed0287a213ba70c71"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output

        man1.install "manpages/uplift.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.14.0/uplift_2.14.0_linux-arm64.tar.gz"
      sha256 "dce34bb86422bdee5dec8d329f7ed64f55df732267f1000c018a27bea4992255"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output

        man1.install "manpages/uplift.1.gz"
      end
    end
  end

  depends_on "git"

  test do
    installed_version = shell_output("#{bin}/uplift version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
