cask "marked" do
  version "2.6.31,1054"
  sha256 "e883e759af8693a008c1f2b0969c2e970568471830a84c358e6670d2c6290cf9"

  url "https://updates.marked2app.com/Marked#{version.csv.first}#{version.csv.second}.dmg"
  name "Marked"
  desc "Previewer for Markdown, MultiMarkdown and other text markup languages"
  homepage "https://marked2app.com/"

  livecheck do
    url "https://updates.marked2app.com/marked.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Marked #{version.major}.app"

  uninstall quit: "com.brettterpstra.marked#{version.major}"

  zap trash: [
    "~/Library/Application Support/Marked #{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brettterpstra.marked#{version.major}.sfl*",
    "~/Library/Caches/Marked #{version.major}",
    "~/Library/Caches/com.brettterpstra.marked#{version.major}",
    "~/Library/Logs/Marked #{version.major}",
    "~/Library/Preferences/com.brettterpstra.marked#{version.major}.plist",
    "~/Library/Saved Application State/com.brettterpstra.marked#{version.major}.savedState",
  ]
end
