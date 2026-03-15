class Taskbuddy < Formula
  desc "TaskBuddy CLI for managing tasks from Terminal"
  homepage "https://github.com/kandelvijaya/taskbuddy-cli-releases"
  url "https://github.com/kandelvijaya/taskbuddy-cli-releases/releases/download/v4.1.0/taskbuddy-4.1.0-macos-universal.tar.gz"
  sha256 "d10bf4821fd3a413f3c9e4ec63ee854fb42c763fea6c5520c57a918f4a57d8b2"
  version "4.1.0"
  depends_on macos: :sonoma

  def install
    libexec.install "taskbuddy", "FocusModel_FocusModel.bundle"
    bin.write_exec_script libexec/"taskbuddy"
  end

  test do
    assert_match "USAGE: taskbuddy", shell_output("#{bin}/taskbuddy --help")
  end
end
