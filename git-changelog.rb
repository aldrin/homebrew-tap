class GitChangelog < Formula
  desc "Categorized change logs from git messages"
  homepage "https://github.com/aldrin/git-changelog"
  url "https://github.com/aldrin/git-changelog/releases/download/v0.3.0/git-changelog-v0.3.0-osx.tar.gz"
  sha256 "fa5b660bb2947bbb186b69848ec9e97af5498b8ac30bde252fbf7f521a6327b2"

  def install
    bin.install "git-changelog"
  end

  test do
    system "#{bin}/git-changelog", "--help"
  end
end
