# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uplift < Formula
  desc "Semantic versioning the easy way"
  homepage "https://github.com/gembaadvantage/uplift"
  version "0.6.1"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v0.6.1/uplift_0.6.1_darwin-x86_64.tar.gz"
      sha256 "63d80c02b82a3e341545d61879214854ab9673a79c3358b85f41423ee0551548"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gembaadvantage/uplift/releases/download/v0.6.1/uplift_0.6.1_darwin-arm64.tar.gz"
      sha256 "401ba4ffd8764d765e23d3b7817b9fa3f584d9475f982f7976138ef4f2cf4a5c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v0.6.1/uplift_0.6.1_linux-x86_64.tar.gz"
      sha256 "f97bfaf3cd376d39f499cf41a65bcebc53e2e82906c291f6c30511fb61aca48b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gembaadvantage/uplift/releases/download/v0.6.1/uplift_0.6.1_linux-arm64.tar.gz"
      sha256 "626a19665189d460b21599fc0c7c08ce41b435db18de7c1f39bd1269785f6ebf"
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  def install
    bin.install "uplift"

    bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
    (bash_completion/"uplift").write bash_output

    zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
    (zsh_completion/"_uplift").write zsh_output

    fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
    (fish_completion/"uplift.fish").write fish_output
  end

  test do
    installed_version = shell_output("#{bin}/uplift version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
