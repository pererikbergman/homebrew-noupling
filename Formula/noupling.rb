class Noupling < Formula
  desc "Architecture auditing CLI that detects coupling violations and circular dependencies"
  homepage "https://github.com/pererikbergman/noupling"
  url "https://github.com/pererikbergman/noupling/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "93c95e2f8b254477f7fe0f6c53dd5291b10ed24a17c2710234024dec6c84a8a5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "noupling #{version}", shell_output("#{bin}/noupling --version")
  end
end
