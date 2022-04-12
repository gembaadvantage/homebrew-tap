# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uplift < Formula
  desc "Semantic versioning the easy way"
  homepage "https://github.com/gembaadvantage/uplift"
  version "2.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.5.0/uplift_2.5.0_darwin-x86_64.tar.gz"
      sha256 "4cd80e0694d4413b3729ef3155802a67ba5dba8e72253e87556a9b86c72f14db"

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
    if Hardware::CPU.arm?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.5.0/uplift_2.5.0_darwin-arm64.tar.gz"
      sha256 "5dc1b832461ab97d0bc96b36436028deee0e1b47290301c6813f6d3555f006cb"

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
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.5.0/uplift_2.5.0_linux-arm64.tar.gz"
      sha256 "677078a6a1aec9e6286029475851bb40f92942cd92e746e11c24c20a9498998f"

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
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.5.0/uplift_2.5.0_linux-x86_64.tar.gz"
      sha256 "6e0478a1aeec9a4ede9e0c65659b1144986fe7a44b64f29b50570563b2548bdf"

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
