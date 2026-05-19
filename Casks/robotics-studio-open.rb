cask "robotics-studio-open" do
  version "0.1.0"
  sha256 "acdc4c53457ea85a8c306728f82cc07a0eb5b5b0423bf719f42f012e19a113d3"

  url "https://github.com/auraoneai/robotics-studio-open/releases/download/v#{version}/Robotics.Studio.Open_#{version}_aarch64.dmg",
      verified: "github.com/auraoneai/robotics-studio-open/"
  name "Robotics Studio Open"
  desc "Open-source desktop IDE for reviewing robotics datasets and failure clusters"
  homepage "https://auraone.ai/open/robotics-studio"
  depends_on arch: :arm64

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Robotics Studio Open.app"
  binary "#{appdir}/Robotics Studio Open.app/Contents/MacOS/robotics-studio-open", target: "robostudio"

  zap trash: [
    "~/Library/Application Support/ai.auraone.roboticsstudio",
    "~/Library/Preferences/ai.auraone.roboticsstudio.plist",
    "~/Library/Saved Application State/ai.auraone.roboticsstudio.savedState"
  ]
end
