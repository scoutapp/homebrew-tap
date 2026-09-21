class ScoutCli < Formula
  desc "Scout APM CLI — monitor application performance from the terminal"
  homepage "https://github.com/scoutapp/scout-cli"
  url "https://github.com/scoutapp/scout-cli.git",
      tag:      "v1.0.0",
      revision: "9e1c434ee3042ffe5821c573ca85892b345cc16a"
  license "MIT"
  head "https://github.com/scoutapp/scout-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/scoutapm/scout/cmd.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"scout"), "."
  end
end
