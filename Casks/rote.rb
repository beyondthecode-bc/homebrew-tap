cask "rote" do
  version "1.0.1"
  sha256 "1e21c1f9b17b95de87674fec1d67ba493f7ee7d850e000a7988c633d1a5f36f9"

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
