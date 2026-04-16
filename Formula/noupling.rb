class Noupling < Formula
  desc "Architecture auditing CLI that detects coupling violations and circular dependencies"
  homepage "https://github.com/pererikbergman/noupling"
  url "https://github.com/pererikbergman/noupling/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "60115e1990e8ee00f7a6b3784c6c62e389de15324b1e4a4aff145eef19348939"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "noupling #{version}", shell_output("#{bin}/noupling --version")
  end
end
