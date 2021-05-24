class PkgmgrUpdater < Formula
  desc "Checks homebrew, macports, pkgsrc or nix, and updates outdated installations"
  homepage "https://github.com/dindin-glitch/pkgmgr-updater"
  url "https://github.com/dindin-glitch/pkgmgr-updater/archive/1.1.2.tar.gz"
  sha256 "b6f560793ab8c0673e481ef0b47eeecd1ddaefc676dd9966bc68d9762332aec7"
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
