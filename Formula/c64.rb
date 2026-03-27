class C64 < Formula
  desc "Command your Commodore C64 Ultimate from the terminal"
  homepage "https://github.com/jeffsand/c64"
  url "https://registry.npmjs.org/@jeffsand/c64/-/c64-0.1.2.tgz"
  sha256 "236131985246c7943e62a092a3cc0d5a45f7c872b416b74c5ff524fa193620b6"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/c64 --version").strip
    assert_match "info", shell_output("#{bin}/c64 --help")
  end
end
