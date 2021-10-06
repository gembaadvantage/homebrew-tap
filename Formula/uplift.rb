# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uplift < Formula
  desc "Semantic versioning the easy way"
  homepage "https://github.com/gembaadvantage/uplift"
  version "1.0.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v1.0.0/uplift_1.0.0_darwin-x86_64.tar.gz"
      sha256 "523dce1cbe26a5d082eff1d30aae04cc424bbf16a3d51430f9feaa7298a93bc4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gembaadvantage/uplift/releases/download/v1.0.0/uplift_1.0.0_darwin-arm64.tar.gz"
      sha256 "733272f8ce39e38209a7849b9361ff6c9b6f0e859853f62fbc514e631586cc25"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v1.0.0/uplift_1.0.0_linux-x86_64.tar.gz"
      sha256 "8a27ecbfeed0f7176c6b1024882cfd0f6782a145ddb47583f8da2e28f2a6bc79"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gembaadvantage/uplift/releases/download/v1.0.0/uplift_1.0.0_linux-arm64.tar.gz"
      sha256 "7ae8a6c8d92a3c9c030b95c3e51bb03dab8a5009bcbd6f43abe9ca5fcae93221"
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
