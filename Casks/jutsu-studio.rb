cask "jutsu-studio" do
  version "0.2.1"
  sha256 "bef455ca7bcc9e22bbd79c0a33bc5ac9f348f4c716754564ace5e251b50c0465"

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
