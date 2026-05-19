cask "rubric-studio-open" do
  version "0.1.0"

  sha256 "e9851568e64a8315e6b72411fb1fa8d6d4d0131fa15882478d29f83cc548c3c3"

  url "https://github.com/auraoneai/rubric-studio-open/releases/download/v#{version}/Rubric.Studio.Open_#{version}_aarch64.dmg",
      verified: "github.com/auraoneai/rubric-studio-open/"
  name "Rubric Studio Open"
  desc "Local-first IDE for authoring, testing, calibrating, diffing, and exporting AI evaluation rubrics"
  homepage "https://auraone.ai/open/rubric-studio-open"
  depends_on arch: :arm64

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Rubric Studio Open.app"
  binary "#{appdir}/Rubric Studio Open.app/Contents/MacOS/rubric-studio-open", target: "rubricstudio"

  zap trash: [
    "~/Library/Application Support/ai.auraone.rubricstudio",
    "~/Library/Caches/ai.auraone.rubricstudio",
    "~/Library/Logs/ai.auraone.rubricstudio",
    "~/Library/Preferences/ai.auraone.rubricstudio.plist"
  ]
end
