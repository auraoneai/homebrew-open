cask "agent-studio-open" do
  version "0.1.0"

  sha256 "1dce9e2abab65a5ef08114f0eeb64c76c4ac1784d5ddc8cfb67f53f8302bb8b7"

  url "https://github.com/auraoneai/agent-studio-open/releases/download/v#{version}/Agent.Studio.Open_#{version}_aarch64.dmg",
      verified: "github.com/auraoneai/agent-studio-open/"
  name "Agent Studio Open"
  desc "Open-source desktop IDE for MCP server debugging and agent trace replay"
  homepage "https://auraone.ai/open/agent-studio-open"
  depends_on arch: :arm64

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
