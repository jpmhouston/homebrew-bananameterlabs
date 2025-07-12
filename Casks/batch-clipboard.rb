cask "batch-clipboard" do
  version "1.0.3"
  sha256 "3849f791698f5789f98e89ae988f6e4884bf20b64d01f10ead3a5b1b71477086"

  url "https://github.com/jpmhouston/Cleepp/releases/download/v#{version}/Batch.Clipboard.#{version}.zip",
      verified: "github.com/jpmhouston/Cleepp/releases/download/"
  name "Batch Clipboard"
  desc "Menubar app adding easy clipboard queue feature"
  homepage "https://batchclipboard.bananameter.lol/"

  livecheck do
    url "https://raw.githubusercontent.com/jpmhouston/Cleepp/forkmain/appcast.xml"
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
