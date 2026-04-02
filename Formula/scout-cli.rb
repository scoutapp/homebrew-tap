class ScoutCli < Formula
  desc "Scout APM CLI — monitor application performance from the terminal"
  homepage "https://github.com/scoutapp/scout-cli"
  url "https://github.com/scoutapp/scout-cli.git",
      tag:      "v0.3.3",
      revision: "cb75de429b166384c519867851b970f55dcfd8fb"
  license "MIT"
  head "https://github.com/scoutapp/scout-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/scoutapm/scout/cmd.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"scout"), "."
  end
end
