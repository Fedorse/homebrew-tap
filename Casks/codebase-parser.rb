cask "codebase-parser" do
  version "1.1.1"

  if Hardware::CPU.intel?

    arch = "x64"
    sha256 "ba12848dd4f48396d5632ac8bcd5136e9eba944c90d67749a717b6f0a4b46597"
  else

    arch = "aarch64"
    sha256 "72a801878817376139811c78517b33830f91c381e8a498ef1050d625280bea78"
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