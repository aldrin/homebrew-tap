class GitChangelog < Formula
  desc "Categorized change logs from git messages"
  homepage "https://github.com/aldrin/git-changelog"
  url "https://github.com/aldrin/git-changelog/archive/v0.1.1.tar.gz"
  sha256 "b727a58554c1e35fb8243e2fe757a8c11aeee4099207aebc3280a38b6e4384b2"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/git-changelog"
  end

  test do
    system "#{bin}/git-changelog", "--help"
  end
end
