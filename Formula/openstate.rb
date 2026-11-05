class Openstate < Formula
  desc "Terminal UI to inspect and time-travel app state, Redux DevTools compatible"
  homepage "https://github.com/franlol/openstate"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.5/openstate-darwin-arm64.tar.gz"
      sha256 "f89a7842f983500b7836eb1ece0176ddd64287243bdf955b93f22d1395e80866"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.5/openstate-darwin-x64.tar.gz"
      sha256 "f6268b647bd3dd5f7919148b67a30ec48a95ee34b258e09139434cb8848df575"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/franlol/openstate/releases/download/v0.1.5/openstate-linux-arm64.tar.gz"
      sha256 "c524744f377b3e6ae93e980a1680bac7485af6730e6d43345817a13fe0acc5b3"
    end
    on_intel do
      url "https://github.com/franlol/openstate/releases/download/v0.1.5/openstate-linux-x64.tar.gz"
      sha256 "74f4fc2204f109cc60f5e0190f2ff218cfd48e0cfffd1297e6c6424d69da3f9b"
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
