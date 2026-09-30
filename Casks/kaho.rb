cask "kaho" do
  version "2.0.0"
  sha256 "6b2fd8aab0e24e682f130e4344bc460c3096c0bf0758fd170e39731a4c07c378"

  url "https://github.com/utsavanand/kaho/releases/download/v#{version}/Kaho-#{version}.dmg",
      verified: "github.com/utsavanand/kaho/"
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
