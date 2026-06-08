class ScoutCli < Formula
  desc "Scout APM CLI — monitor application performance from the terminal"
  homepage "https://github.com/scoutapp/scout-cli"
  url "https://github.com/scoutapp/scout-cli.git",
      tag:      "v0.4.0",
      revision: "dac4563f82359fa8882497bb58e095b21a387fdb"
  license "MIT"
  head "https://github.com/scoutapp/scout-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/scoutapm/scout/cmd.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"scout"), "."
  end
end
