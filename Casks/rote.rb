cask "rote" do
  version "1.0.3"
  sha256 "00027d00c7f1423fd35d6b1ea7ef869ba8a2da7c08f5f8b8c14e9514ce5bba48"

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
