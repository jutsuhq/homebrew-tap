cask "jutsu-studio" do
  version "0.2.2"
  sha256 "933809143065373e9dbe3d9e578304197d97601536d8f6ff26ea0d7401692d26"

  url "https://github.com/jutsuhq/jutsu-studio/releases/download/v#{version}/Jutsu-Studio-#{version}.dmg"
  name "Jutsu Studio"
  desc "Unofficial desktop app for Higgsfield video and image generation"
  homepage "https://github.com/jutsuhq/jutsu-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Sparkle updates the app itself; `brew upgrade` leaves it alone unless run with --greedy.
  auto_updates true
  depends_on macos: :sonoma

  app "Jutsu Studio.app"

  zap trash: [
    "~/Library/Application Scripts/com.jutsustudio.JutsuStudio",
    "~/Library/Containers/com.jutsustudio.JutsuStudio",
  ]
end
