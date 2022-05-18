class Ruplacer < Formula
  desc "Find and replace text in source files"
  homepage "https://github.com/dmerejkowsky/ruplacer/"
  url "https://github.com/dmerejkowsky/ruplacer/archive/v0.8.0.tar.gz"
  sha256 "7109bf19c0f62ec477c952c1c509353f7c6abd19deb9169384ebc9d21ad71dc7"
  head "https://github.com/dmerejkowsky/ruplacer"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    (testpath/"foo.txt").write("this is foo")
    system "#{bin}/ruplacer", "foo", "bar", testpath
  end
end
