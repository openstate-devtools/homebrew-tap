class Openstate < Formula
  desc "Terminal UI to inspect and time-travel app state, Redux DevTools compatible"
  homepage "https://github.com/franlol/openstate"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.1/openstate-darwin-arm64.tar.gz"
      sha256 "a24ce5d044d879aaa712a54cc598aa60a6632793824e70723a2c7ee4c62c8cdc"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.1/openstate-darwin-x64.tar.gz"
      sha256 "0e3379e5c03f09daaab762019cf38e0245c8a346f2ceede35c049402c8d6cc2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.1/openstate-linux-arm64.tar.gz"
      sha256 "2afcc88980f9082c425bef2c3b61ee42f6a1102759d9635a53265c2d55d7815c"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.1/openstate-linux-x64.tar.gz"
      sha256 "5ffbc53c94c1cded8057edb91ce7ec0f6cca4e5ce9b7de6bc141a9d6eab38870"
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
