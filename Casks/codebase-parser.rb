cask "codebase-parser" do
  version "1.1.0"

  arch arm: "aarch64", intel: "x64"
  url "https://github.com/Fedorse/Codebase-parser/releases/download/v#{version}/Parser-#{version}-macOS-#{arch}.dmg"  sha256 arm:   "3924c36d216f95266d4cd80a7d72977de103069beadac8c4662a18138a4324e4",
         intel: "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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