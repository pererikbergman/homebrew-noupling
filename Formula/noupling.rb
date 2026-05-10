class Noupling < Formula
  desc "Architecture auditing CLI that detects coupling violations and circular dependencies"
  homepage "https://github.com/pererikbergman/noupling"
  url "https://github.com/pererikbergman/noupling/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "32e48d4dd7bea0cccef32132f1bab5ce725a97fe0e16d0199650fb59ab0670bf"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "noupling #{version}", shell_output("#{bin}/noupling --version")
  end
end
