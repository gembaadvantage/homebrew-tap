# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CodecommitSign < Formula
  desc "Generate a signed AWS V4 CodeCommit URL directly from an IAM role. No dedicated CodeCommit credentials needed"
  homepage "https://github.com/gembaadvantage/codecommit-sign"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gembaadvantage/codecommit-sign/releases/download/v1.4.0/codecommit-sign_1.4.0_darwin-arm64.tar.gz"
      sha256 "7515288462aa86f3b6c6f466400b7483951412c4e4544cd37121c6b87dfc8fbf"

      def install
        bin.install "codecommit-sign"

        bash_output = Utils.safe_popen_read(bin/"codecommit-sign", "completion", "bash")
        (bash_completion/"codecommit-sign").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"codecommit-sign", "completion", "zsh")
        (zsh_completion/"_codecommit-sign").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"codecommit-sign", "completion", "fish")
        (fish_completion/"codecommit-sign.fish").write fish_output

        man1.install "manpages/codecommit-sign.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/codecommit-sign/releases/download/v1.4.0/codecommit-sign_1.4.0_darwin-x86_64.tar.gz"
      sha256 "3ede19f80a5ce75cdd28ee3ef8207c30699a811a2a4dc63fcd6519d1be8aec29"

      def install
        bin.install "codecommit-sign"

        bash_output = Utils.safe_popen_read(bin/"codecommit-sign", "completion", "bash")
        (bash_completion/"codecommit-sign").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"codecommit-sign", "completion", "zsh")
        (zsh_completion/"_codecommit-sign").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"codecommit-sign", "completion", "fish")
        (fish_completion/"codecommit-sign.fish").write fish_output

        man1.install "manpages/codecommit-sign.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gembaadvantage/codecommit-sign/releases/download/v1.4.0/codecommit-sign_1.4.0_linux-arm64.tar.gz"
      sha256 "0cbaf480c380db6f6a59de0fa93afd2944f99c21e68352da559e1e0cad04e981"

      def install
        bin.install "codecommit-sign"

        bash_output = Utils.safe_popen_read(bin/"codecommit-sign", "completion", "bash")
        (bash_completion/"codecommit-sign").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"codecommit-sign", "completion", "zsh")
        (zsh_completion/"_codecommit-sign").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"codecommit-sign", "completion", "fish")
        (fish_completion/"codecommit-sign.fish").write fish_output

        man1.install "manpages/codecommit-sign.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/codecommit-sign/releases/download/v1.4.0/codecommit-sign_1.4.0_linux-x86_64.tar.gz"
      sha256 "2dec529867db98cb4dcf60ed37f18ccbfbc88c2428e59ec252b51d164d34894f"

      def install
        bin.install "codecommit-sign"

        bash_output = Utils.safe_popen_read(bin/"codecommit-sign", "completion", "bash")
        (bash_completion/"codecommit-sign").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"codecommit-sign", "completion", "zsh")
        (zsh_completion/"_codecommit-sign").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"codecommit-sign", "completion", "fish")
        (fish_completion/"codecommit-sign.fish").write fish_output

        man1.install "manpages/codecommit-sign.1.gz"
      end
    end
  end

  test do
    installed_version = shell_output("#{bin}/codecommit-sign version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
