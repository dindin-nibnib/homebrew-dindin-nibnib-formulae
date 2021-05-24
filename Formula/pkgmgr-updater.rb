class PkgmgrUpdater < Formula
  desc "Checks homebrew, macports, pkgsrc or nix, and updates outdated installations"
  homepage "https://github.com/dindin-glitch/pkgmgr-updater"
  url "https://github.com/dindin-glitch/pkgmgr-updater/archive/1.1.2.tar.gz"
  sha256 "8c1eed6d6d34ebd3a23b4d706ab5031625f631bfb935fad85de0792b66c9035a"
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
