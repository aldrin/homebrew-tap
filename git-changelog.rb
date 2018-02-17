class GitChangelog < Formula
  version "0.3.1"
  desc "Categorized change logs from git messages"
  homepage "https://github.com/aldrin/git-changelog"
  url "https://github.com/aldrin/git-changelog/releases/download/v0.3.1/git-changelog-v0.3.1-osx.tar.gz"
  sha256 "a3057e3c634ba1c4ac76ce5cb48ccff08d5a65775bb2a04fbeee7b636eed3c68"

  def install
    bin.install "git-changelog"
  end

  test do
    system "#{bin}/git-changelog", "--help"
  end
end
