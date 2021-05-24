class PkgmgrUpdater < Formula
  desc "Checks homebrew, macports, pkgsrc or nix, and updates outdated installations"
  homepage "https://github.com/dindin-glitch/pkgmgr-updater"
  url "https://github.com/dindin-glitch/pkgmgr-updater/archive/1.1.1.tar.gz"
  sha256 "4df9e61f7e215cc93400bbbf624b01d36488a71e532288828262bc1db5af52e2"
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
