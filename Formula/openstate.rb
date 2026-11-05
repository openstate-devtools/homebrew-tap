class Openstate < Formula
  desc "Terminal UI to inspect and time-travel app state, Redux DevTools compatible"
  homepage "https://github.com/franlol/openstate"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.2/openstate-darwin-arm64.tar.gz"
      sha256 "35001dbf6f89cfbbf4c69ee6ad0c9c1f715c6e64460ccb7f74d8dfccae678959"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.2/openstate-darwin-x64.tar.gz"
      sha256 "30a55fc1a8b05dd176368601d291c6e0f725f7719bbf64e95ad08bb612e6274d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.2/openstate-linux-arm64.tar.gz"
      sha256 "44cc3bf3f29ee625b6508b1a9086716312786873900c6cce15d5f4247786f77b"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.2/openstate-linux-x64.tar.gz"
      sha256 "d183cc9b9bfae3e9925a0206439359acaf2b161bfe235117ddc888266365bb51"
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
