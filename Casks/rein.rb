cask "rein" do
  version "1.0.1"
  sha256 "40cd326ab91b081cbcd579499e0704435061036a0a64c7a4e931ad3c019baff6"

  url "https://github.com/lukedavid2/rein-releases/releases/download/v#{version}/Rein.dmg"
  name "Rein"
  desc "Menu bar panel for keep-awake, fans, charge limit, audio and displays"
  homepage "https://undercoverzest.app/rein/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Rein.app"

  uninstall quit: "com.lukedavid.Rein"

  zap trash: [
    "~/Library/Application Support/Rein",
    "~/Library/Caches/com.lukedavid.Rein",
    "~/Library/HTTPStorages/com.lukedavid.Rein",
    "~/Library/HTTPStorages/com.lukedavid.Rein.binarycookies",
    "~/Library/Preferences/com.lukedavid.Rein.plist",
  ]

  caveats <<~EOS
    Rein starts with a 7-day trial of every feature. To remove it completely,
    first open Rein and choose Settings > Remove helper, and turn off any
    virtual audio devices (Audio > Virtual devices > Turn off), then uninstall.
    Details: https://undercoverzest.app/rein/trust.html
  EOS
end
