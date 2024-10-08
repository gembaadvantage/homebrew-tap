# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uplift < Formula
  desc "Semantic versioning the easy way. Powered by Conventional Commits. Built for use with CI"
  homepage "https://upliftci.dev"
  version "2.25.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.25.0/uplift_2.25.0_darwin-x86_64.tar.gz"
      sha256 "1bea1a34a83ea2923716bad2acb0826cdc3d1fa02e7b8d3678d92ab8b4bf519d"

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
    on_arm do
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.25.0/uplift_2.25.0_darwin-arm64.tar.gz"
      sha256 "f4af54d441457314a876e4fd55d27e44467ffb93dadc5f120133b7b37882806d"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gembaadvantage/uplift/releases/download/v2.25.0/uplift_2.25.0_linux-x86_64.tar.gz"
        sha256 "65ceaa6bdd4ee5f4247fa1a2766647cd2d85c1a0f3c14028e194d292881bd00c"

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
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gembaadvantage/uplift/releases/download/v2.25.0/uplift_2.25.0_linux-arm64.tar.gz"
        sha256 "a917c3955ad0e7c76b50fe4e526044625951c5421092ca026e2dd2d77420496d"

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
  end

  test do
    installed_version = shell_output("#{bin}/uplift version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
