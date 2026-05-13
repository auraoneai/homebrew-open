cask "agent-studio-open" do
  version "0.1.0"
  sha256 "{{SHA256_DMG_UNIVERSAL}}"

  url "https://github.com/auraoneai/agent-studio-open/releases/download/v#{version}/Agent-Studio-Open_#{version}_universal.dmg",
      verified: "github.com/auraoneai/agent-studio-open/"
  name "Agent Studio Open"
  desc "Open-source desktop IDE for MCP server debugging and agent trace replay"
  homepage "https://auraone.ai/open/agent-studio-open"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Agent Studio Open.app"
  binary "#{appdir}/Agent Studio Open.app/Contents/MacOS/agentstudio", target: "agentstudio"

  zap trash: [
    "~/Library/Application Support/ai.auraone.agentstudio",
    "~/Library/Preferences/ai.auraone.agentstudio.plist",
    "~/Library/Saved Application State/ai.auraone.agentstudio.savedState"
  ]
end
