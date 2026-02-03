class Crnd < Formula
  desc "Agent-first CLI for cron scheduling and process management"
  homepage "https://github.com/ysm-dev/crnd"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-darwin-arm64.tar.gz"
      sha256 "ab919987e354fb3b117dd3f7100dd757b969eddd35a46bf4be3c64f7c7ff11e5"
    else
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-darwin-x64.tar.gz"
      sha256 "46644df9942f42ce2e822387c6ae9b82e7ee9730b5a2992da9227cdf73b88ec5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-linux-arm64.tar.gz"
      sha256 "eab0026af515ad7bff6944443021e83144a19b1a1fce9b62ed02f54ddae93fd5"
    else
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-linux-x64.tar.gz"
      sha256 "d901b159bfb44db3825aa1cb986756340c26d6a51b462eb5469d017ebea7c958"
    end
  end

  def install
    bin.install "crnd"
  end

  test do
    assert_match "crnd", shell_output("#{bin}/crnd --version")
  end
end
