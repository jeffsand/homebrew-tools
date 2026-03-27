class C64 < Formula
  desc "Command your Commodore C64 Ultimate from the terminal"
  homepage "https://github.com/jeffsand/c64"
  url "https://registry.npmjs.org/@jeffsand/c64/-/c64-0.1.5.tgz"
  sha256 "5bbdef0718504d52f32a347bb56ff03f4d92d1cc3a53a5e066aff3def7d14327"
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
