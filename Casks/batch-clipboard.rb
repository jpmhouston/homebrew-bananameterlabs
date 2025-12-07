cask "batch-clipboard" do
  version "2.2"
  sha256 "a9e12ce5c90a30b57e2321ff7aa3c2535a60132d9c589181c9dbaf83263ab6cb"

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
