class Crnd < Formula
  desc "Agent-first CLI for cron scheduling and process management"
  homepage "https://github.com/ysm-dev/crnd"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-darwin-arm64.tar.gz"
      sha256 "c64bcbb0bab066ca7fbbedef64bf464c16be7c3047b3b06503371aeb28a915b3"
    else
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-darwin-x64.tar.gz"
      sha256 "01aad6b1d319e22737de03b5db110f38dd25dfe8141a2b95b677a67b90893741"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-linux-arm64.tar.gz"
      sha256 "1d6a6e20a2ce89e6dc5e12507dd2dcc0b422ec02ee12b557343aecd0ba655a60"
    else
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-linux-x64.tar.gz"
      sha256 "adc7b5e84e599e9264543316256718b9eccb3d4c88a2fed2c5517c47af2754a3"
    end
  end

  def install
    bin.install "crnd"
  end

  test do
    assert_match "crnd", shell_output("#{bin}/crnd --version")
  end
end
