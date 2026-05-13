cask "rubric-studio-open" do
  version "0.1.0"
  arch arm: "aarch64", intel: "x64"

  sha256 arm: "BLOCKED-2026-05-13-REPLACE-WITH-SIGNED-DMG-SHA256",
         intel: "BLOCKED-2026-05-13-REPLACE-WITH-SIGNED-DMG-SHA256"

  url "https://github.com/auraoneai/rubric-studio-open/releases/download/v#{version}/Rubric-Studio-Open_#{version}_universal.dmg",
      verified: "github.com/auraoneai/rubric-studio-open/"
  name "Rubric Studio Open"
  desc "Local-first IDE for authoring, testing, calibrating, diffing, and exporting AI evaluation rubrics"
  homepage "https://auraone.ai/open/rubric-studio-open"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Rubric Studio Open.app"
  binary "#{appdir}/Rubric Studio Open.app/Contents/MacOS/rubricstudio", target: "rubricstudio"

  zap trash: [
    "~/Library/Application Support/ai.auraone.rubricstudio",
    "~/Library/Caches/ai.auraone.rubricstudio",
    "~/Library/Logs/ai.auraone.rubricstudio",
    "~/Library/Preferences/ai.auraone.rubricstudio.plist"
  ]
end
