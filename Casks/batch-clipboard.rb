cask "batch-clipboard" do
  version "1.0.2"
  sha256 "8a0800553bd20421a395027ad235599dc1d9c3070ce122a07a441a7801423cea"

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
