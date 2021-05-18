class MacosUpdater < Formula
  desc "Checks homebrew, macports, pkgsrc or nix, and updates outdated installations"
  homepage "https://github.com/dindin-glitch/macos-updater"
  url "https://github.com/dindin-glitch/macos-updater/archive/1.0.5.tar.gz"
  sha256 "78c072e050c124e23317d8d1f8c7d7ce7e407d1a154f1465bb26c3f073db18e5"
  license "BSD-2-Clause"

  bottle :unneeded  
  depends_on "mas"

  def install
    bin.install "macos-updater"
  end

  test do
    system "macos-updater"
  end
end
