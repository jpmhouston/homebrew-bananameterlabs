cask "batch-clipboard" do
  version "1.0.1b11"
  sha256 "aa5e26cc0f64617fdd4956d91051f5e4fe101cff5cb0671a4b5c6fdaf320276b"

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
