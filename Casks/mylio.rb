cask "mylio" do
  version "22.2.7606"
  sha256 :no_check

  url "https://myliodownloads.s3.amazonaws.com/Mylio.dmg",
      verified: "myliodownloads.s3.amazonaws.com/"
  name "Mylio"
  desc "Photo organizer"
  homepage "https://mylio.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Mylio.app"

  zap trash: [
    "~/Library/Application Support/Mylio",
    "~/Library/Caches/mylollc.Mylio",
    "~/Library/HTTPStorages/mylollc.Mylio",
    "~/Library/Preferences/mylollc.Mylio.plist",
    "~/Mylio",
  ]
end
