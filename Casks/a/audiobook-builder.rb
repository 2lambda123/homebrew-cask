cask "audiobook-builder" do
  version "2.2.7"
  sha256 "4e12c6965dc227b1962669d1fd0997000448ab0054387871813c523aa368a41b"

  url "https://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  name "Audiobook Builder"
  desc "Turn audio CDs and files into audiobooks"
  homepage "https://www.splasm.com/audiobookbuilder/"

  livecheck do
    url "https://www.splasm.com/audiobookbuilder/update.html"
    regex(/class=.*["' >]Audiobook\sBuilder\s?(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :el_capitan"

  app "Audiobook Builder.app"
end
