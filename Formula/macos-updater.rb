class MacosUpdater < Formula
  desc "Checks homebrew, macports, pkgsrc or nix, and updates outdated installations"
  homepage "https://github.com/dindin-glitch/macos-updater"
  url "https://github.com/dindin-glitch/macos-updater/archive/1.0.5.tar.gz"
  sha256 "a1e08ebcb7eb8262dfa3196139dbdff3237cc02a538447a2a34d444ef38936fd"
  license "BSD-2-Clause"

  bottle :unneeded  
  depends_on "mas"

  def install
    bin.install "macos-updater"
    system "chmod 755 #{bin}/macos-updater
  end

  test do
    system "macos-updater"
  end
end
