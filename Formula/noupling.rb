class Noupling < Formula
  desc "Architecture auditing CLI that detects coupling violations and circular dependencies"
  homepage "https://github.com/pererikbergman/noupling"
  url "https://github.com/pererikbergman/noupling/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "noupling #{version}", shell_output("#{bin}/noupling --version")
  end
end
