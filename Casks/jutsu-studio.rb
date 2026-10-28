cask "jutsu-studio" do
  version "0.2.6"
  sha256 "b064e34e1698adad40776dae92a6b837e0e50554b6a37cb39be2716564bf12ee"

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
