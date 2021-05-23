class PkgmgrUpdater < Formula
  desc "Checks homebrew, macports, pkgsrc or nix, and updates outdated installations"
  homepage "https://github.com/dindin-glitch/pkgmgr-updater"
  url "https://github.com/dindin-glitch/pkgmgr-updater/archive/1.1.0.tar.gz"
  sha256 "fc7fd32f9c610ff85629c847a6ce921626a97a1afdfdf1bddfd8bb8cf33f405b"
  license "BSD-2-Clause"

  bottle :unneeded  
  depends_on "mas"

  def install
    bin.install "pkgmgr-updater"
    chmod "a+x", "./configure"
    system "./configure", bin.to_s
  end

  test do
    system "pkgmgr-updater"
  end
end
