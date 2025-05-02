cask "batch-clipboard" do
  version "1.0.1"
  sha256 "8d0f0de5419e92c6d0bcf41055a98cd44410f1df874ed5e44751895ca714d7e4"

  url "https://github.com/jpmhouston/Cleepp/releases/download/v#{version}/Batch.Clipboard.#{version}.zip", verified: "github.com/jpmhouston/Cleepp/releases/download/"
  name "Batch Clipboard"
  desc "Menubar app adding easy clipboard queue feature"
  homepage "https://batchclipboard.bananameter.lol"

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
