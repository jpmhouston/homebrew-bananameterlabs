cask "batch-clipboard" do
  version "2.2b2"
  sha256 "2bfeb4077af851f93a6696cb13b1e2cceb9359a6623ca417e127a362b43cdc44"

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
