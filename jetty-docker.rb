class JettyDocker < Formula
  desc "CLI tool to open web interfaces for running Docker container in your browser"
  homepage "https://github.com/smitmartijn/jetty"
  version "1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/smitmartijn/jetty/releases/download/v#{version}/jetty_#{version}_darwin_amd64.tar.gz"
      sha256 "f2a98d8a574dea3a25d9aae676416c2975996bb86294ff2d6d84863e36c7ee8a"
    elsif Hardware::CPU.arm?
      url "https://github.com/smitmartijn/jetty/releases/download/v#{version}/jetty_#{version}_darwin_arm64.tar.gz"
      sha256 "0cf1ca4cb58dff1532ae17f4333f32f6d7c4f769c971a2018cbe45613e0c6657"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/smitmartijn/jetty/releases/download/v#{version}/jetty_#{version}_linux_amd64.tar.gz"
      sha256 "c8adbebed81b8e1878eed3def3d09d64c03d6ca03b296a5fd7f35f0c424a6adb"
    elsif Hardware::CPU.arm?
      url "https://github.com/smitmartijn/jetty/releases/download/v#{version}/jetty_#{version}_linux_arm64.tar.gz"
      sha256 "6ff6b847cc5e1f092a52faf4effa925a16f4ca7bbe5d8b2845505adc059a74d5"
    end
  end

  def install
    bin.install "jetty"
  end

  test do
    system "#{bin}/jetty", "--version"
  end
end
