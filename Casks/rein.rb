cask "rein" do
  version "1.0.0"
  sha256 "e1dbf5f721768b56a2682adc11299deb8b3d2bace1ad24a7f3032d3cced258d0"

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
