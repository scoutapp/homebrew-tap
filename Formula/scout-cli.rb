class ScoutCli < Formula
  desc "Scout APM CLI — monitor application performance from the terminal"
  homepage "https://github.com/scoutapp/scout-cli"
  url "https://github.com/scoutapp/scout-cli.git",
      tag:      "v0.5.0",
      revision: "3aa5f56d5bc2d5145f2953be8b56288f4fb2713a"
  license "MIT"
  head "https://github.com/scoutapp/scout-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/scoutapm/scout/cmd.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"scout"), "."
  end
end
