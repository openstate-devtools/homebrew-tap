class Openstate < Formula
  desc "Terminal UI to inspect and time-travel app state, Redux DevTools compatible"
  homepage "https://github.com/franlol/openstate"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.3/openstate-darwin-arm64.tar.gz"
      sha256 "72195647a66947810980d350c0b245f97eb211af19bf354c2f7cf8b700d8f9e2"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.3/openstate-darwin-x64.tar.gz"
      sha256 "b120ebaa775e48b76bcc5b419414fb2d63e97ab3f61bdc6c0e382fc389baa25d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.3/openstate-linux-arm64.tar.gz"
      sha256 "7b1c4c8a58442b71c1598b6864f23374ce8f8ccbb44f2eb16ccad9e3bca12aa7"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.3/openstate-linux-x64.tar.gz"
      sha256 "7b5c5d5dbdbaf3f4c1bc5b574556b521fe9d2435d4d8930d4998bd00ba4189f6"
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
