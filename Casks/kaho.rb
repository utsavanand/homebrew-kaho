cask "kaho" do
  version "2.4.7"
  sha256 "bab02777de474b1734a624ab337370b7fa2096b132a33f8fcefcf2450e0570aa"

  url "https://github.com/utsavanand/kaho/releases/download/v#{version}/Kaho-#{version}.dmg"
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
