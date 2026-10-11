cask "kaho" do
  version "2.4.0"
  sha256 "c1f4b73cb0f35543e90dfce2db67ada962a809ae25644d0a2e02cb9118c93abe"

  url "https://github.com/utsavanand/kaho/releases/download/v#{version}/Kaho-#{version}.zip"
  name "Kaho"
  desc "Local voice dictation for macOS — hold a key, speak, release"
  homepage "https://kaho.utsava.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Kaho.app"

  zap trash: [
    "~/Library/Application Support/Kaho",
    "~/Library/Logs/Kaho.log",
  ]
end
