class Taskbuddy < Formula
  desc "TaskBuddy CLI for managing tasks from Terminal"
  homepage "https://github.com/kandelvijaya/taskbuddy-cli-releases"
  url "https://github.com/kandelvijaya/taskbuddy-cli-releases/releases/download/v4.2.0/taskbuddy-4.2.0-macos-universal.tar.gz"
  sha256 "dc6b370500126bf0502d38f675c040cd7f5fe66604b7eda0b1ba0a57f57829fe"
  version "4.2.0"
  depends_on macos: :sonoma

  def install
    libexec.install "taskbuddy", "FocusModel_FocusModel.bundle"
    bin.write_exec_script libexec/"taskbuddy"
  end

  test do
    assert_match "USAGE: taskbuddy", shell_output("#{bin}/taskbuddy --help")
  end
end
