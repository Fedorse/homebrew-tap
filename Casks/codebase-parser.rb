cask "codebase-parser" do
  version "1.1.0"

  if Hardware::CPU.intel?

    arch = "x64"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  else

    arch = "aarch64"
    sha256 "3924c36d216f95266d4cd80a7d72977de103069beadac8c4662a18138a4324e4"
  end

  url "https://github.com/Fedorse/Codebase-parser/releases/download/v#{version}/Parser-#{version}-macOS-#{arch}.dmg"
  name "Codebase Parser"
  desc "Desktop codebase parser & analyzer"
  homepage "https://github.com/Fedorse/Codebase-parser"

  app "codebase-parser.app"

  zap trash: [
    "~/Library/Application Support/com.parser.app",
    "~/Library/Caches/com.parser.app",
    "~/Library/Saved Application State/com.parser.app.savedState",
  ]
end