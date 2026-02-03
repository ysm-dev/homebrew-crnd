class Crnd < Formula
  desc "Agent-first CLI for cron scheduling and process management"
  homepage "https://github.com/ysm-dev/crnd"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-darwin-arm64.tar.gz"
      sha256 "fd090b9823573d88c95d0a8852d32cce9c13271193d55b494e596fa8601dce5d"
    else
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-darwin-x64.tar.gz"
      sha256 "2ef979d33da1acc8bb715abb052ceaaacfaf6ce2ca2c83d8b717d8b2546dd85a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-linux-arm64.tar.gz"
      sha256 "914d09a7a62bef88cbf6e65450fa73da855dd531ca2e2bba446085dc38639956"
    else
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-linux-x64.tar.gz"
      sha256 "2640e37d5d5f0f78b15f4e0fabddb04f5a3b82ea01197e042e4933270e9c0998"
    end
  end

  def install
    bin.install "crnd"
  end

  test do
    assert_match "crnd", shell_output("#{bin}/crnd --version")
  end
end
