class Openstate < Formula
  desc "Terminal UI to inspect and time-travel app state, Redux DevTools compatible"
  homepage "https://github.com/franlol/openstate"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.4/openstate-darwin-arm64.tar.gz"
      sha256 "11f49c4467fbdb15784019dbdde155b88da7300fec5641db845c8ac52d4fe393"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.4/openstate-darwin-x64.tar.gz"
      sha256 "cdd87426fba2fb23189771358604f7dd9de3e9e4b9cca840b36d288d81f791a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.4/openstate-linux-arm64.tar.gz"
      sha256 "d85f2893dbfbba5c11219de7a028cb5e27c944151eda8affd07954c5da73a9f0"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.4/openstate-linux-x64.tar.gz"
      sha256 "f362353f3f4b3a445ae63ce6d1affa57dc5ae68651046e85c0c0dcbfb7279460"
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
