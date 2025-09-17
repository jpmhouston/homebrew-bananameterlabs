cask "batch-clipboard" do
  version "2.0.1"
  sha256 "221c4736a8a4550a2466bb7d225b192f0806955f6092b20bc56ead02001e1cfe"

  url "https://github.com/jpmhouston/Batch-Clipboard/releases/download/v#{version}/Batch.Clipboard.#{version}.zip",
      verified: "github.com/jpmhouston/Batch-Clipboard/releases/download/"
  name "Batch Clipboard"
  desc "Menubar app adding easy clipboard queue feature"
  homepage "https://batchclipboard.bananameter.lol/"

  livecheck do
    url "https://raw.githubusercontent.com/jpmhouston/Batch-Clipboard/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "Batch Clipboard.app"

  zap trash: [
    "~/Library/Caches/lol.bananameter.batchclip",
    "~/Library/Containers/lol.bananameter.batchclip",
    "~/Library/Preferences/lol.bananameter.batchclip.plist",
  ]
end
