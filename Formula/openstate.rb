class Openstate < Formula
  desc "Terminal UI to inspect and time-travel app state, Redux DevTools compatible"
  homepage "https://github.com/franlol/openstate"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.0/openstate-darwin-arm64.tar.gz"
      sha256 "831fbdfc3f1d42f6905c6e571f1047b8df8a60f8606f92348499ca00b9a82af4"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.0/openstate-darwin-x64.tar.gz"
      sha256 "0fd7687de1ca68a0aa4e774f6c8ade9e7e971877777d4815ad57354cdaf09be6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.0/openstate-linux-arm64.tar.gz"
      sha256 "0ba2e49be1864a02ebd32c0e06d61776405266e0534f532ef4b8eb431e77e019"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.0/openstate-linux-x64.tar.gz"
      sha256 "995504bfc484866b09fa87d6236bfac01a2ac25d0b35a3c0e95437d6f48da7f2"
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
