class Crnd < Formula
  desc "Agent-first CLI for cron scheduling and process management"
  homepage "https://github.com/ysm-dev/crnd"
  license "MIT"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-darwin-arm64.tar.gz"
      sha256 "0927f4e8283962cb7e6c46581ff7e62df69bf94bd1b3157f7ce082b0cf43c845"
    else
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-darwin-x64.tar.gz"
      sha256 "5125fc2df7f4b54041d06c876313c5d5ea9e091687d4b9efeb0b3c5029f92826"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-linux-arm64.tar.gz"
      sha256 "3927e18b3a077fbbc0ad4ecd01d31685880614a91dd17b0c4cb8da9b117e1659"
    else
      url "https://github.com/ysm-dev/crnd/releases/download/v#{version}/crnd-linux-x64.tar.gz"
      sha256 "b840f5f142e33631d764a08c59ff9aa1ca895aae5fc464244e4e987f019ff8eb"
    end
  end

  def install
    bin.install "crnd"
  end

  test do
    assert_match "crnd", shell_output("#{bin}/crnd --version")
  end
end
