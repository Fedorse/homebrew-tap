cask "codebase-parser" do
  version "0.1.0"
  # 1. Get this hash by running: shasum -a 256 /path/to/your/downloaded.dmg
  sha256 "REPLACE_WITH_ACTUAL_SHA256_HASH_OF_THE_DMG"

  # 2. This URL points to your GitHub Release artifact
  url "https://github.com/Fedorse/Codebase-parser/releases/download/v#{version}/codebase-parser_#{version}_aarch64.dmg"

  name "Codebase Parser"
  desc "Desktop codebase parser & analyzer"
  homepage "https://github.com/Fedorse/Codebase-parser"

  # 3. This matches the name of the app inside the dmg
  app "Codebase Parser.app"

  zap trash: [
    "~/Library/Application Support/com.parser.app",
    "~/Library/Caches/com.parser.app",
    "~/Library/Saved Application State/com.parser.app.savedState",
  ]
end

