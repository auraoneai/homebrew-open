cask "robotics-studio-open" do
  version "0.1.0"
  sha256 "{{SHA256_DMG_UNIVERSAL}}"

  url "https://github.com/auraoneai/robotics-studio-open/releases/download/v#{version}/Robotics-Studio-Open_#{version}_universal.dmg",
      verified: "github.com/auraoneai/robotics-studio-open/"
  name "Robotics Studio Open"
  desc "Open-source desktop IDE for reviewing robotics datasets and failure clusters"
  homepage "https://auraone.ai/open/robotics-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Robotics Studio Open.app"
  binary "#{appdir}/Robotics Studio Open.app/Contents/MacOS/robostudio", target: "robostudio"

  zap trash: [
    "~/Library/Application Support/ai.auraone.roboticsstudio",
    "~/Library/Preferences/ai.auraone.roboticsstudio.plist",
    "~/Library/Saved Application State/ai.auraone.roboticsstudio.savedState"
  ]
end
