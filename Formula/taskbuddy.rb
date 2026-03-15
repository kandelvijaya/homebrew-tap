class Taskbuddy < Formula
  desc "TaskBuddy CLI for managing tasks from Terminal"
  homepage "https://github.com/kandelvijaya/taskbuddy-cli-releases"
  url "https://github.com/kandelvijaya/taskbuddy-cli-releases/releases/download/v4.0.2/taskbuddy-4.0.2-macos-universal.tar.gz"
  sha256 "49bad66dcb27165ed7d18ed4c541a1b31f17e7363665a66e9ddbb6403ae55dcf"
  version "4.0.2"
  depends_on macos: :sonoma

  def install
    libexec.install "taskbuddy", "FocusModel_FocusModel.bundle"
    bin.write_exec_script libexec/"taskbuddy"
  end

  test do
    assert_match "USAGE: taskbuddy", shell_output("#{bin}/taskbuddy --help")
  end
end
