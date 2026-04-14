class Noupling < Formula
  desc "Architecture auditing CLI that detects coupling violations and circular dependencies"
  homepage "https://github.com/pererikbergman/noupling"
  url "https://github.com/pererikbergman/noupling/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "noupling #{version}", shell_output("#{bin}/noupling --version")
  end
end
