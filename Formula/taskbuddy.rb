class Taskbuddy < Formula
  desc "TaskBuddy CLI for managing tasks from Terminal"
  homepage "https://github.com/kandelvijaya/taskbuddy-cli-releases"
  url "https://github.com/kandelvijaya/taskbuddy-cli-releases/releases/download/v4.0.1/taskbuddy-4.0.1-macos-universal.tar.gz"
  sha256 "aed262fb1790426ccbcfc5f26ebc60b5ef7bc743f8ea9b826f160e5f1a9763e4"
  version "4.0.1"
  depends_on macos: :sonoma

  def install
    libexec.install "taskbuddy", "FocusModel_FocusModel.bundle"
    bin.write_exec_script libexec/"taskbuddy"
  end

  test do
    assert_match "USAGE: taskbuddy", shell_output("#{bin}/taskbuddy --help")
  end
end
