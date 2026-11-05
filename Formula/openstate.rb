class Openstate < Formula
  desc "Terminal UI to inspect and time-travel app state, Redux DevTools compatible"
  homepage "https://github.com/franlol/openstate"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.5/openstate-darwin-arm64.tar.gz"
      sha256 "eaa527653406e9324bdef964e4e51920faca38a38fc94016eef8ec0543d9e109"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.5/openstate-darwin-x64.tar.gz"
      sha256 "da8d7b7eebcbd2cbbfba9add48776bdba879ba1fcf53a011b3b25b7d3bf593a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.5/openstate-linux-arm64.tar.gz"
      sha256 "9f8fc5dd15d0457b9ed6b7f3076fb2dc2eaf5759a7c541d9b664a26f22905b15"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.5/openstate-linux-x64.tar.gz"
      sha256 "a2db47153ec66b010c2be1920dbb72e2d7cc0ab4272425111808eb9088584d22"
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
