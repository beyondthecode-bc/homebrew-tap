cask "rote" do
  version "1.0.2"
  sha256 "1b14549685a6b43b0487b991fa872b989380da7c157d9e7d3a7675944be19983"

  url "https://github.com/beyondthecode-bc/Rote/releases/download/v#{version}/Rote-v#{version}.zip"
  name "Rote"
  desc "Keyboard shortcut coach that teaches you the shortcuts you keep skipping"
  homepage "https://github.com/beyondthecode-bc/Rote"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Rote.app"

  uninstall quit: "com.beyondthecode.rote"

  zap trash: [
    "~/Library/Application Support/Rote",
    "~/Library/Caches/com.beyondthecode.rote",
    "~/Library/HTTPStorages/com.beyondthecode.rote",
    "~/Library/Preferences/com.beyondthecode.rote.plist",
  ]
end
