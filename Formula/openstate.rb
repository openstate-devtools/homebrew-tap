class Openstate < Formula
  desc "Terminal UI to inspect and time-travel app state, Redux DevTools compatible"
  homepage "https://github.com/franlol/openstate"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.6/openstate-darwin-arm64.tar.gz"
      sha256 "7ed914efc1f1d769bc4370d0a58e6f2987b0b0791d3f9ce0ef2e0f0f31891c2c"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.6/openstate-darwin-x64.tar.gz"
      sha256 "915204805acb477d9437da406ac1c2345d32ca57b7b63e3afe43c55bc8f0a830"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.6/openstate-linux-arm64.tar.gz"
      sha256 "7f3678f673515ed7229f51429b161b3ada24c856dcca5bc6f3bbc3344b0e782f"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.6/openstate-linux-x64.tar.gz"
      sha256 "57e6f4b0aae2f5b33e2c998356a083b1550d92d53be47b3a3504eaa4580d7f00"
    end
  end

  def install
    bin.install "openstate"
  end

  def caveats
    "To open openstate from Spotlight or the app launcher: openstate --desktop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openstate --version")
  end
end
