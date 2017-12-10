class GitChangelog < Formula
  desc "Categorized change logs from git messages"
  homepage "https://github.com/aldrin/git-changelog"
  url "https://github.com/aldrin/git-changelog/archive/v0.2.0.tar.gz"
  sha256 "0461115347bf7273798dcdd570c1cc09c90f0ebcf407626e92474fb23e9b0f4e"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/git-changelog"
  end

  test do
    system "#{bin}/git-changelog", "--help"
  end
end
