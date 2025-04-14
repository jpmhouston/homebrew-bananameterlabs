cask "batch-clipboard" do
  version "1.0.1b10"
  sha256 "0f348c96aa4452fa4d41491b875164fd6122672b6651e84b8df862a17131957e"

  url "https://github.com/jpmhouston/Cleepp/releases/download/v#{version}/Batch.Clipboard.#{version}.zip", verified: "github.com/jpmhouston/Cleepp/releases/download/"
  name "Batch Clipboard"
  desc "Menubar app adding easy clipboard queue feature"
  homepage "https://bananameter.lol/batchclipboard"

  livecheck do
    url "https://raw.githubusercontent.com/jpmhouston/Cleepp/forkmain/appcast.xml"
    strategy :sparkle, &:short_versio
  end

  depends_on macos: ">= :big_sur"

  app "Batch Clipboard.app"

  zap trash: [
    "~/Library/Caches/lol.bananameter.batchclip",
    "~/Library/Containers/lol.bananameter.batchclip",
    "~/Library/Preferences/lol.bananameter.batchclip.plist",
  ]
end
